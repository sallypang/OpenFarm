//
//  ProductNavigationController.m
//  OpenFarm
//
//  Created by sally pang on 2016-07-12.
//  Copyright © 2016 Sally Pang. All rights reserved.
//

#import "ProductNavigationController.h"
#import "ProductViewController.h"

@implementation ProductNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Product" bundle:nil];
    ProductViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"ProductViewController"];
    [self setViewControllers:@[controller] animated:NO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
