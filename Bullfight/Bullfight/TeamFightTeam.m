//
//  TeamAndTypeController.m
//  Bullfight
//  球队和比赛形式
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightTeam.h"
#import "TeamFightTime.h"

@interface TeamFightTeam ()

@end

@implementation TeamFightTeam

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor  = [GlobalConst appBgColor];
    
    
    [GlobalUtil set9PathImage:self.btn imageName:@"activities_btn.png" top:2 right:10];
    [GlobalUtil setMaskImageQuick:self.imgTeam withMask:@"round_mask.png" point:CGPointMake(100, 100)];
    self.title = @"球队和比赛形式";
    
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

- (IBAction)btnClick:(id)sender {
    
    TeamFightTime *c1 = [[TeamFightTime alloc] initWithNibName:@"TeamFightTime" bundle:nil];
    [self.navigationController pushViewController:c1 animated:YES];
    
}
@end
