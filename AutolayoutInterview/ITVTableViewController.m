//
//  ITVTableViewController.m
//  AutolayoutInterview
//
//  Created by Arthur Wang on 4/28/15.
//  Copyright (c) 2015 Strikingly. All rights reserved.
//

#import "ITVTableViewController.h"
#import "ITVCell.h"

@interface ITVTableViewController ()

@end

@implementation ITVTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ITVCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ITVCell" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 1: {
            cell.nameLabel.text = @"Short Name";
            cell.contentLabel.text = @"Short Content";
        } break;

        case 2: {
            cell.nameLabel.text = @"Short Name";
            cell.contentLabel.text = @"Looooooooooooooooooooooooooooooooooooooooooooooooooong Content";
        } break;

        case 3: {
            cell.nameLabel.text = @"Looooooooooooooooooooooooooooooooooooooooooooooooooong Name";
            cell.contentLabel.text = @"Short Content";
        } break;

        default: {
            cell.nameLabel.text = @"Just Name";
            cell.contentLabel.text = @"Just Content";
        } break;
    }
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
