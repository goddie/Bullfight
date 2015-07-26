//
//  MyTeamEdit.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyTeamEdit.h"

@interface MyTeamEdit ()

@end

@implementation MyTeamEdit

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 19, 19)];
    [btn setBackgroundImage:[UIImage imageNamed:@"nav_btn_back.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    self.navigationItem.leftBarButtonItem = left;
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


@end
