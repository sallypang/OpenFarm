//
//  ProfileNavigationControllerViewController.m
//  OpenFarm
//
//  Created by sally pang on 2016-07-12.
//  Copyright © 2016 Sally Pang. All rights reserved.
//

#import "ProfileNavigationController.h"
#import "ProfileTableViewController.h"

@interface ProfileNavigationController ()

@end

@implementation ProfileNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Profile" bundle:nil];
    ProfileTableViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"ProfileTableViewController"];
    [self setViewControllers:@[controller] animated:NO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
