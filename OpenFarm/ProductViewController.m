//
//  ProductViewController.m
//  OpenFarm
//
//  Created by sally pang on 2016-07-12.
//  Copyright © 2016 Sally Pang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self getJSONFromNetwork];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - JSON

- (void)getJSONFromNetwork {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://openfarmnode.mybluemix.net/data"]];
        [self performSelectorOnMainThread:@selector(fetchedData:)
                               withObject:data waitUntilDone:YES];
    });
    
}


- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          
                          options:kNilOptions
                          error:&error];
    
    self.dust = [json objectForKey:@"sensors.arduino.dust"];
    self.humidity = [json objectForKey:@"sensors.arduino.humidity"];
    self.luminosity = [json objectForKey:@"sensors.arduino.luminosity"];
    self.noise = [json objectForKey:@"sensors.arduino.noise"];
    self.oxygen = [json objectForKey:@"sensors.arduino.oxygen"];
    self.temperature = [json objectForKey:@"sensors.arduino.temperature"];
    self.water = [json objectForKey:@"sensors.arduino.water"];
    
    if (self.water) {
        self.waterLabel.text = @"Wet";
    } else {
        self.waterLabel.text = @"Safe";
    }
    self.temperatureLabel.text = [self.temperature stringValue];
    self.humidityLabel.text = [self.humidity stringValue];
    self.luminLabel.text = [self.luminosity stringValue];
    self.oxyLabel.text = [self.oxygen stringValue];
    self.dustLabel.text = [self.dust stringValue];
    
    if ([self.temperature doubleValue] > 50.0) {
        [self.temperatureLabel setTextColor:[UIColor redColor]];
    }
    
    NSLog(@"dust: %@, temperate: %@", self.dust, self.temperature); //3
}


#pragma mark - Private Functions

- (IBAction)refreshAction:(id)sender {
    [self getJSONFromNetwork];
}

@end
