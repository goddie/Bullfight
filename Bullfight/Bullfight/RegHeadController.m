//
//  RegHeadController.m
//  Bullfight
//  注册选头像
//  Created by goddie on 15/6/18.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "RegHeadController.h"
#import "RegController.h"

@interface RegHeadController ()

@end

@implementation RegHeadController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
    
    [GlobalUtil set9PathImage:self.btn2 imageName:@"activities_btn.png" top:2 right:10];
    
    [self.text1 setValue:[GlobalUtil colorWithArray:ButtonColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.text2 setValue:[GlobalUtil colorWithArray:ButtonColor] forKeyPath:@"_placeholderLabel.textColor"];
    
    self.view.backgroundColor = [GlobalConst appBgColor];
    
    self.title  = @"注册";
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
@end
