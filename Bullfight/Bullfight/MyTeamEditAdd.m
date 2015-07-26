//
//  MyTeamEditAdd.m
//  Bullfight
//  添加队员
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyTeamEditAdd.h"
#import "MyTeamEditMemberCell.h"

@interface MyTeamEditAdd ()

@end

@implementation MyTeamEditAdd

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"添加球员";
    
    self.tableView.backgroundColor = [GlobalConst appBgColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView*)getHeader
{
    
    UIView *parent  =[[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 70)];
    
    UISearchBar *search = [[UISearchBar alloc] initWithFrame:parent.frame];
    
    return  search;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MyTeamEditMemberCell";
    MyTeamEditMemberCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    //cell.team1.tag = 199;
    
    [cell setBtnTitle:@"邀请加入"];
    
    //[GlobalUtil addButtonToView:self sender:cell.img1 action:@selector(pushTeamController:) data:123];
    
    
    return  cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 66.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 70.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self getHeader];
}

@end
