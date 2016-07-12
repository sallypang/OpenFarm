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
#import "ProductViewController.h"

@interface ProductTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ProductTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.products = [NSMutableArray arrayWithObjects:@"Free Run Eggs", @"2% DairySpark Milk", @"Redlove Era Apple", @"Valencia Orange", @"Lettuce", @"Better Boy Tomato", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ProductSegue"]) {
        ProductViewController *controller = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *name = [self.products objectAtIndex:indexPath.row];
        controller.navigationItem.title = name;
    }
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
    switch(indexPath.row) {
        case 0:
            cell.productImageView.image = [UIImage imageNamed:@"Egg"];
            cell.productLabel.text = @"Free Run Eggs";
            break;
        case 1:
            cell.productImageView.image = [UIImage imageNamed:@"Milk"];
            cell.productLabel.text = @"2% DairySpark Milk";
            break;
        case 2:
            cell.productImageView.image = [UIImage imageNamed:@"Apple"];
            cell.productLabel.text = @"Redlove Era Apple";
            break;
        case 3:
            cell.productImageView.image = [UIImage imageNamed:@"Orange"];
            cell.productLabel.text = @"Valencia Orange";
            break;
        case 4:
            cell.productImageView.image = [UIImage imageNamed:@"Lettuce"];
            cell.productLabel.text = @"Lettuce";
            break;
        case 5:
            cell.productImageView.image = [UIImage imageNamed:@"Tomato"];
            cell.productLabel.text = @"Better Boy Tomato";
            break;
        default:
            break;
    }
    
    if([indexPath row] % 2) {
        [cell setBackgroundColor:[UIColor whiteColor]];
    } else {
        [cell setBackgroundColor:[UIColor colorFromHexString:@"#ceeac0"]];
    }

    return cell;
}


@end
