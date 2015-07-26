//
//  GateController.m
//  Bullfight
//  登录 注册
//  Created by goddie on 15/6/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "GateController.h"
#import "RegSMSController.h"
#import "LoginController.h"

@interface GateController ()

@end

@implementation GateController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.title = @"注册登录";
    
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
    [GlobalUtil set9PathImage:self.btn2 imageName:@"activities_btn.png" top:2 right:10];
    
    self.view.backgroundColor = [GlobalConst appBgColor];
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

- (IBAction)btn1Click:(id)sender {
    RegSMSController* regSMSController = [[RegSMSController alloc] initWithNibName:@"RegSMSController" bundle:nil];
    [self.navigationController pushViewController:regSMSController animated:YES];
}

- (IBAction)btn2Click:(id)sender {
    LoginController* loginController = [[LoginController alloc] initWithNibName:@"LoginController" bundle:nil];
    [self.navigationController pushViewController:loginController animated:YES];
}
@end
