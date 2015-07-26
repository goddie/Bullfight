//
//  UserMatchStatusController.m
//  Bullfight
//
//  Created by goddie on 15/7/23.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UserMatchStatusController.h"
#import "MatchBeginCell.h"

@interface UserMatchStatusController ()

@end

@implementation UserMatchStatusController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tableView.backgroundColor = [GlobalConst appBgColor];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MatchBeginCell";
    MatchBeginCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    //cell.team1.tag = 199;
    
    
    return  cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}
 
@end
