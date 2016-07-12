//
//  ProductViewController.h
//  OpenFarm
//
//  Created by sally pang on 2016-07-12.
//  Copyright © 2016 Sally Pang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController

@property (nonatomic, strong) NSNumber *dust;
@property (nonatomic, strong) NSNumber *humidity;
@property (nonatomic, strong) NSNumber *luminosity;
@property (nonatomic, strong) NSNumber *noise;
@property (nonatomic, strong) NSNumber *oxygen;
@property (nonatomic, strong) NSNumber *temperature;
@property (nonatomic) BOOL water;

@property (weak, nonatomic) IBOutlet UILabel *waterLabel;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *humidityLabel;
@property (weak, nonatomic) IBOutlet UILabel *luminLabel;
@property (weak, nonatomic) IBOutlet UILabel *oxyLabel;
@property (weak, nonatomic) IBOutlet UILabel *dustLabel;

@end
