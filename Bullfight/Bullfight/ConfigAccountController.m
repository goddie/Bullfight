//
//  ConfigAccountController.m
//  Bullfight
//  账号设置
//  Created by goddie on 15/6/18.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "ConfigAccountController.h"

@interface ConfigAccountController ()

@end

@implementation ConfigAccountController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (QRootElement *)create
{
    QRootElement *root = [[QRootElement alloc] init];
    root.presentationMode = QPresentationModeModalForm;
    root.title = @"设置";
    root.controllerName = @"ConfigAccountController";
    root.grouped = YES;
    
    
    QSection *section1 = [[QSection alloc] initWithTitle:@""];
    
    QLabelElement* label1 = [[QLabelElement alloc] initWithTitle:@"用户名" Value:@""];
    QLabelElement* label2 = [[QLabelElement alloc] initWithTitle:@"密码" Value:@""];
    
    QButtonElement* btn1 =[[QButtonElement alloc] initWithTitle:@"修改密码"];

    
    
    
    [section1 addElement:label1];
    [section1 addElement:label2];
    
    [section1 addElement:btn1];
    
    [root addSection:section1];
    
    btn1.onSelected =  ^{
        
//        QRootElement *qr = [[ConfigAccountController alloc] create];
//        ConfigAccountController *controller = [[ConfigAccountController alloc] initWithRoot:qr];
//        [GlobalUtil pushNewQuickController:controller];
        
    };
    
    root.appearance.tableGroupedBackgroundColor =  [GlobalUtil colorWithArray:AppBgColor];
    
    QAppearance *fieldsAppearance = [root.appearance copy];
    
    fieldsAppearance.backgroundColorEnabled = [GlobalUtil colorWithArray:TabBarBgColor];
    fieldsAppearance.actionColorEnabled = [UIColor whiteColor];
    fieldsAppearance.labelColorEnabled = [UIColor whiteColor];
    
    for (QElement* e in section1.elements) {
        e.appearance = fieldsAppearance;
    }

    
    return root;

}

@end
