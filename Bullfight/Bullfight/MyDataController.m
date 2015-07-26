//
//  MyDataController.m
//  Bullfight
//
//  Created by goddie on 15/7/23.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyDataController.h"

@interface MyDataController ()

@end

@implementation MyDataController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)addLeftNavButton
{
    //    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //    [refreshButton setFrame:CGRectMake(0,0,26,30)];
    //    refreshButton.userInteractionEnabled = YES;
    //    [refreshButton setImage:[UIImage imageNamed:@"teamIcon.png"] forState:UIControlStateNormal];
    //
    //    [GlobalUtil setMaskImageQuick:refreshButton withMask:@"shared_avatar_mask_medium.png" point:CGPointMake(26, 30)];
    //
    //    // ASSIGNING THE BUTTON WITH IMAGE TO BACK BAR BUTTON
    //
    //    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
    //
    //    self.navigationItem.leftBarButtonItem = refreshBarButton;
    //
    //    [refreshButton addTarget:self action:@selector(leftPush) forControlEvents:UIControlEventTouchUpInside];
}

-(void)addRightNavButton
{
//    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [refreshButton setFrame:CGRectMake(0,0,26,30)];
//    refreshButton.userInteractionEnabled = YES;
//    [refreshButton setImage:[UIImage imageNamed:@"nav_btn_add.png"] forState:UIControlStateNormal];
//    
//    // ASSIGNING THE BUTTON WITH IMAGE TO BACK BAR BUTTON
//    
//    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
//    
//    self.navigationItem.rightBarButtonItem = refreshBarButton;
//    
//    [refreshButton addTarget:self action:@selector(rightPush) forControlEvents:UIControlEventTouchUpInside];
}



-(void)leftPush
{
    
}

-(void)rightPush
{
//    QRootElement *root = [[AddTeamController alloc] create];
//    AddTeamController *c3 = [[AddTeamController alloc] initWithRoot:root];
//    
//    [self.navigationController pushViewController:c3 animated:YES];
}

@end
