//
//  RegController.m
//  Bullfight
//  注册
//  Created by goddie on 15/6/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "RegController.h"
#import "QSubmitElement.h"

@interface RegController ()

@end

@implementation RegController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    // self.navigationController.title = @"注册";
    [GlobalUtil set9PathImage:self.btn imageName:@"activities_btn.png" top:2 right:10];
    [self.username setValue:[GlobalUtil colorWithArray:ButtonColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.password setValue:[GlobalUtil colorWithArray:ButtonColor] forKeyPath:@"_placeholderLabel.textColor"];
    
    self.view.backgroundColor  = [GlobalConst appBgColor];
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
}

+ (QRootElement *)create
{

    QRootElement *root = [[QRootElement alloc] init];
    root.grouped = YES;
    root.title = @"注册";
    root.controllerName = @"RegController";


    QSection *section = [[QSection alloc] init];


    QEntryElement *label1 = [[QEntryElement alloc] init];
    [label1 setKey:@"username"];
    [label1 setTitle:@"用户名"];
    [label1 setPlaceholder:@"请输入用户名"];

    QEntryElement *label2 =  [[QEntryElement alloc] init];
    [label2 setKey:@"password"];
    [label2 setTitle:@"密码"];
    [label2 setPlaceholder:@"请输入密码"];


    [root addSection:section];

    [section addElement:label1];
    [section addElement:label2];

    QSection *btnSection = [[QSection alloc] init];
    
//    QSubmitElement *button = [[QSubmitElement alloc] init];
//    [button setKey:@"submit"];
    
    QButtonElement* button  = [[QButtonElement alloc] initWithTitle:@"下一步"];
    [button setKey:@"submit"];
    
    [root addSection:btnSection];
    [btnSection addElement:button];
    
    
    
    return  root;
}




@end
