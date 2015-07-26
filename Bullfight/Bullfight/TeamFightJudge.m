//
//  JudgeAndDataController.m
//  Bullfight
//  裁判和数据员
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightJudge.h"
#import "TeamFightPay.h"

@interface TeamFightJudge ()

@end

@implementation TeamFightJudge

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title  = @"裁判和数据员";
    
    [GlobalUtil set9PathImage:self.btnNext imageName:@"activities_btn.png" top:2 right:10];
    
        self.view.backgroundColor= [GlobalConst appBgColor];
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
}
- (IBAction)btn2Click:(id)sender {
}
- (IBAction)btn3Click:(id)sender {
}
- (IBAction)btn21Click:(id)sender {
}
- (IBAction)btn22Click:(id)sender {
}
- (IBAction)btn23Click:(id)sender {
}
- (IBAction)btnNextClick:(id)sender {
    
    TeamFightPay *c1 = [[TeamFightPay alloc] initWithNibName:@"TeamFightPay" bundle:nil];
    [self.navigationController pushViewController:c1 animated:YES];
    
}
@end
