//
//  ViewController.h
//  OpenFarm
//
//  Created by sally pang on 2016-07-12.
//  Copyright © 2016 Sally Pang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SSTabBarIndex) {
    ProductViewController = 0,
    ProfileViewController = 1
};

@interface MainViewController : UITabBarController

- (BOOL)revertSelectedIndex;
- (void)setTabBarHidden:(BOOL)hidden;
- (void)setTabBarHidden:(BOOL)hidden animated:(BOOL)animated;


@end

