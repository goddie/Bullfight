//
//  UserStatusController.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UserStatusController.h"
#import "TeamRecordDataCell.h"
#import "UserStatusCell.h"


@interface UserStatusController ()

@end

@implementation UserStatusController
{
    NSArray *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [GlobalConst appBgColor];
    
    data = @[@[@"参赛场数",@"9888",@"总得分数",@"8884",],@[@"投篮命中率",@"35%",@"罚球命中率",@"5%"],@[@"进攻篮板",@"123",@"防守篮板",@"32"],@[@"场均篮板",@"23",@"场均助攻",@"32"],@[@"场均失误",@"23",@"场均抢断",@"232"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if (indexPath.row == 0) {
        static NSString *CellIdentifier = @"UserStatusCell";
        UserStatusCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
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
        
        
        return  cell;

    }
    
    
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
    if (indexPath.row ==0 ) {
        return  120.0f;
    }
    return 80.0f;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    return 316.0f;
//}

@end
