//
//  ProductViewController.m
//  OpenFarm
//
//  Created by sally pang on 2016-07-12.
//  Copyright © 2016 Sally Pang. All rights reserved.
//

#import "ProductTableViewController.h"
#import "ProductTableViewCell.h"
#import "Colors.h"

@interface ProductTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ProductTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.products = [NSMutableArray arrayWithObjects:@"Eggs", @"Milk", @"Apple", @"Oranges" @"Lettuce", @"Tomato", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - UITableDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.products.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProductTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductCell" forIndexPath:indexPath];
    cell.productImageView.image = [UIImage imageNamed:@"Apple"];
    cell.productLabel.text = @"Redlover Era Apple";
    
    if([indexPath row] % 2) {
        [cell setBackgroundColor:[UIColor whiteColor]];
    } else {
        [cell setBackgroundColor:[UIColor colorFromHexString:@"#ceeac0"]];
    }

    return cell;
}


@end
