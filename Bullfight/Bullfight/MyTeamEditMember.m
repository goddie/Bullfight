//
//  MyTeamEditMember.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyTeamEditMember.h"
#import "MyTeamEditMemberCell.h"
#import "MyTeamEditAdd.h"
#import "MyTeamEditLeave.h"

@interface MyTeamEditMember ()

@end

@implementation MyTeamEditMember

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [GlobalConst appBgColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIView*)getHeader
{
    float w = self.view.frame.size.width;
    UIView *parent = [[UIView alloc] initWithFrame:CGRectMake(0, 0, w, 70)];
    
    parent.backgroundColor = [GlobalConst appBgColor];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake((w-180)*0.5f, 5, 80, 30)];
    [btn1 setTitle:@"添加球员" forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont systemFontOfSize:13.0f];
    [GlobalUtil set9PathImage:btn1 imageName:@"activities_btn.png" top:2 right:10];
    [parent addSubview:btn1];
    
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(btn1.frame.origin.x+btn1.frame.size.width+20.0f, 5, 80, 30)];
    [btn2 setTitle:@"退出队伍" forState:UIControlStateNormal];
    btn2.titleLabel.font = [UIFont systemFontOfSize:13.0f];
    [GlobalUtil set9PathImage:btn2 imageName:@"activities_btn.png" top:2 right:10];
    [parent addSubview:btn2];
    
    [btn2 addTarget:self action:@selector(btn2Click) forControlEvents:UIControlEventTouchUpInside];
    
    return  parent;
}

/**
 *  添加球员
 */
-(void)btn1Click
{
    MyTeamEditAdd *c1 = [[MyTeamEditAdd alloc] initWithNibName:@"MyTeamEditAdd" bundle:nil];
    [self.navigationController pushViewController:c1 animated:YES];
}

/**
 *  退出队伍
 */
-(void)btn2Click
{
    MyTeamEditLeave *c1 = [[MyTeamEditLeave alloc] initWithNibName:@"MyTeamEditLeave" bundle:nil];
    [self.navigationController pushViewController:c1 animated:YES];
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
