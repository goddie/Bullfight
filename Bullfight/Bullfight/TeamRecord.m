//
//  TeamRecordController.m
//  Bullfight
//  球队战绩
//  Created by goddie on 15/6/23.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamRecord.h"
#import "UserMatchCell.h"
#import "TeamHeader.h"
#import "ManaTeamController.h"
#import "MatchBeginCell.h"
 
@interface TeamRecord ()

@end

@implementation TeamRecord

- (void)viewDidLoad {
    [super viewDidLoad];
 
    //[GlobalUtil addTouchToView:self sender:[self.view viewWithTag:10] action:@selector(btnClick)];
    
    self.tableView.backgroundColor = [GlobalConst lightAppBgColor];
    
//    [self.tableView sizeHeaderToFit];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}



/**
 *  球队管理
 */
//-(void)btnClick
//{
//    ManaTeamController *controller = [[ManaTeamController alloc] initWithNibName:@"ManaTeamController" bundle:nil];
//    [self.navigationController pushViewController:controller animated:YES];
//}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return 10;
}

 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MatchBeginCell";
    MatchBeginCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    //cell.team1.tag = 199;
    
    
    
    [GlobalUtil addButtonToView:self sender:cell.img1 action:@selector(pushTeamController:) data:123];
    
    
    return  cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 190.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 316.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self getHeader:3 index:0];
}



@end
