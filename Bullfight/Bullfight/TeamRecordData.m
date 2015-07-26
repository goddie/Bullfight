//
//  TeamRecordData.m
//  Bullfight
//  球队数据
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamRecordData.h"
#import "TeamRecordDataCell.h"

@interface TeamRecordData ()

@end

@implementation TeamRecordData
{
    NSArray *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.view.backgroundColor = [GlobalConst appBgColor];
    
    self.tableView.backgroundColor = [ GlobalConst lightAppBgColor];
    data = @[@[@"投篮命中率",@"35%",@"罚球命中率",@"5%",],@[@"进攻篮板",@"123",@"防守篮板",@"32",],@[@"场均篮板",@"23",@"场均助攻",@"32"],@[@"场均失误",@"23",@"场均抢断",@"232"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"TeamRecordDataCell";
    TeamRecordDataCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    //cell.team1.tag = 199;
    
    NSArray *arr = [data objectAtIndex:indexPath.row];
    
    cell.txt1.text = [arr objectAtIndex:0];
    cell.value1.text = [arr objectAtIndex:1];
    cell.txt2.text = [arr objectAtIndex:2];
    cell.value2.text = [arr objectAtIndex:3];
    
    //[GlobalUtil addButtonToView:self sender:cell.img1 action:@selector(pushTeamController:) data:123];
    
    
    return  cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 80.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 316.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self getHeader:3 index:2];
}

@end
