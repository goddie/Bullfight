//
//  UserHomeController.m
//  Bullfight
//  用户首页
//  Created by goddie on 15/6/18.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UserHomeController.h"
#import "ConfigHomeController.h"
#import "ConfigProfileController.h"
#import "UserStatusController.h"
#import "MyTeamController.h"
#import "MyManaTeamController.h"
#import "MyJoinTeamController.h"
#import "MyDataController.h"
#import "UserMatchStatusController.h"

@interface UserHomeController ()

@end

@implementation UserHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
    
    [GlobalUtil set9PathImage:self.btn2 imageName:@"activities_btn.png" top:2 right:10];
    
    self.title = @"我";
    
    UIBarButtonItem* barButton = [GlobalUtil getBarButton:@"nav_btn_settings.png" target:self action:@selector(rightBarButtonItemClick)];
    self.navigationItem.rightBarButtonItem = barButton;
    
    
    [GlobalUtil addTouchToView:self sender:[self.view viewWithTag:10] action:@selector(touchAction:)];
    [GlobalUtil addTouchToView:self sender:[self.view viewWithTag:20] action:@selector(touchAction:)];
    [GlobalUtil addTouchToView:self sender:[self.view viewWithTag:30] action:@selector(touchAction:)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)touchAction:(id)sender
{
    UITapGestureRecognizer *senderView =(UITapGestureRecognizer*)sender;
    
    if (senderView.view.tag == 10) {
        
 
        
        
        MyDataController *c1= [[MyDataController alloc] initWithNibName:@"MyDataController" bundle:nil];
        c1.title = @"我的数据";
        
        UserStatusController *control1 = [[UserStatusController alloc] initWithNibName:@"UserStatusController" bundle:nil];
        UserMatchStatusController *control2 = [[UserMatchStatusController alloc] initWithNibName:@"UserMatchStatusController" bundle:nil];
        
        [c1 setButtons:@[@"综合数据",@"单场数据"] vcs:@[control1,control2] activeIndex:0];
        
        [self.navigationController pushViewController:c1 animated:YES];

        
    }
    
    
    //我的球队
    if (senderView.view.tag == 20) {
        
        
        
        MyTeamController *c1= [[MyTeamController alloc] initWithNibName:@"MyTeamController" bundle:nil];
        c1.title = @"我的球队";
        
        MyManaTeamController *control1 = [[MyManaTeamController alloc] initWithNibName:@"MyManaTeamController" bundle:nil];
        MyJoinTeamController *control2 = [[MyJoinTeamController alloc] initWithNibName:@"MyJoinTeamController" bundle:nil];
        
        [c1 setButtons:@[@"我管理的",@"我加入的"] vcs:@[control1,control2] activeIndex:0];

        
        [self.navigationController pushViewController:c1 animated:YES];
    }
    
    if (senderView.view.tag == 30) {
//        MyTeamController *controller = [[MyTeamController alloc] initWithNibName:@"MyTeamController" bundle:nil];
//        [self.navigationController pushViewController:controller animated:YES];
    }
}

- (IBAction)btn1Click:(id)sender {
    
    QRootElement *root = [[ConfigProfileController alloc] create];
    ConfigProfileController *c3 = [[ConfigProfileController alloc] initWithRoot:root];

    [self.navigationController pushViewController:c3 animated:YES];
    
}
- (IBAction)btn2Click:(id)sender {
}

-(void)rightBarButtonItemClick
{
    QRootElement *root = [[ConfigHomeController alloc] create];
    ConfigHomeController *c3 = [[ConfigHomeController alloc] initWithRoot:root];
    
    //ConfigHomeController* configHomeController = [[ConfigHomeController alloc] initWithNibName:@"ConfigHomeController" bundle:nil];
    [self.navigationController pushViewController:c3 animated:YES];
}
@end
