//
//  CustomeTableOne.m
//  Bullfight
//
//  Created by goddie on 15/7/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "CustomeTableOne.h"
#import "MatchHeaderController.h"
#import "WildMatchDetailHeader.h"
#import "TeamRecordHeader.h"
#import "MyManaTeamHeader.h"

@interface CustomeTableOne ()

@end

@implementation CustomeTableOne

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 19, 19)];
    [btn setBackgroundImage:[UIImage imageNamed:@"nav_btn_back.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    self.navigationItem.leftBarButtonItem = left;

    self.tableView.backgroundColor = [GlobalConst lightAppBgColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)leftClick
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
    [self.navigationController popViewControllerAnimated:YES];
}



-(UIView*)getHeader:(NSInteger)style index:(NSInteger)index
{
    
    if (style==1) {
        self.title = @"比赛详情";
        MatchHeaderController *matchHeaderController = [[MatchHeaderController alloc] initWithNibName:@"MatchHeaderController" bundle:nil];
        [matchHeaderController initButton:self activeIndex:index];
        return matchHeaderController.view;
    }
    
    
    if (style==2) {
        self.title = @"比赛详情";
        WildMatchDetailHeader *wildMatchDetailHeaderController = [[WildMatchDetailHeader alloc] initWithNibName:@"WildMatchDetailHeader" bundle:nil];
        [wildMatchDetailHeaderController initButton:self activeIndex:index];
        return wildMatchDetailHeaderController.view;
    }
    
    if (style==3) {
        self.title = @"球队信息";
        TeamRecordHeader *teamRecordController = [[TeamRecordHeader alloc] initWithNibName:@"TeamRecordHeader" bundle:nil];
        [teamRecordController initButton:self activeIndex:index];
        return teamRecordController.view;
    }
    
    if (style==4) {
        self.title = @"管理球队";
        MyManaTeamHeader *c1 = [[MyManaTeamHeader alloc] initWithNibName:@"MyManaTeamHeader" bundle:nil];
        [c1 initButton:self activeIndex:index];
        return c1.view;
    }

    
    return  nil;
}




@end
