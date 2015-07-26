//
//  TeamRecordHonor.m
//  Bullfight
//  获得荣誉 
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamRecordHonor.h"
#import "TeamRecordMemberCell.h"

@interface TeamRecordHonor ()

@end

@implementation TeamRecordHonor

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [GlobalConst appBgColor];
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
    
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"TeamRecordMemberCell";
    TeamRecordMemberCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
//    cell.team1.tag = 199;
    
    
    
    //[GlobalUtil addButtonToView:self sender:cell.img1 action:@selector(pushTeamController:) data:123];
    
    
    return  cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 66.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 316.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self getHeader:3 index:3];
}
@end
