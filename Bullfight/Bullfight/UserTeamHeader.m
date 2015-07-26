//
//  UserTeamController.m
//  Bullfight
//
//  Created by goddie on 15/7/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UserTeamHeader.h"

@interface UserTeamHeader ()

@end

@implementation UserTeamHeader

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [GlobalConst appBgColor];
    self.tabHolder.backgroundColor = [GlobalConst appBgColor];
    
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
    [GlobalUtil setMaskImageQuick:self.img withMask:@"round_mask.png" point:CGPointMake(80, 80)];
    
    
    
    self.title = @"我的球队";
    
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
    NSLog(@"btn1Click");
}
@end
