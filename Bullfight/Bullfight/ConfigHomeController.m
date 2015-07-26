//
//  ConfigHomeController.m
//  Bullfight
//
//  Created by goddie on 15/6/18.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "ConfigHomeController.h"
#import "ConfigAccountController.h"
#import "ConfigNoticeController.h"
#import "ConfigHelpController.h"

@interface ConfigHomeController ()

@end

@implementation ConfigHomeController

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
    root.controllerName = @"ConfigHomeController";
    root.grouped = YES;
    
    
    QSection *section1 = [[QSection alloc] initWithTitle:@""];
    QButtonElement* btn1 =[[QButtonElement alloc] initWithTitle:@"账号设置"];
    QButtonElement* btn2 =[[QButtonElement alloc] initWithTitle:@"账号连接"];
    
    [section1 addElement:btn1];
    [section1 addElement:btn2];
    
    [root addSection:section1];
     
    btn1.onSelected =  ^{
        
        QRootElement *qr = [[ConfigAccountController alloc] create];
        ConfigAccountController *controller = [[ConfigAccountController alloc] initWithRoot:qr];
        //[self.navigationController pushViewController:controller animated:YES];
        [GlobalUtil pushNewQuickController:controller];
        
    };
    
    
    
    QSection *section2 = [[QSection alloc] initWithTitle:@""];
    
    [section2 addElement:[[QButtonElement alloc] initWithTitle:@"银行卡"]];
    [section2 addElement:[[QButtonElement alloc] initWithTitle:@"支付密码"]];
    [root addSection:section2];
    
    
    QSection *section3 = [[QSection alloc] initWithTitle:@""];
    
    QButtonElement *btn31 = [[QButtonElement alloc] initWithTitle:@"通知设置"];
    QButtonElement *btn32 = [[QButtonElement alloc] initWithTitle:@"帮助"];
    
    btn32.onSelected = ^{
        QRootElement *qr = [[ConfigHelpController alloc] create];
        ConfigHelpController *controller = [[ConfigHelpController alloc] initWithRoot:qr];
        [GlobalUtil pushNewQuickController:controller];
        
    };
    
    [section3 addElement:btn31];
    [section3 addElement:btn32];
    
    [root addSection:section3];
    
    btn31.onSelected = ^{
        
        QRootElement *qr = [[ConfigNoticeController alloc] create];
        ConfigNoticeController *controller = [[ConfigNoticeController alloc] initWithRoot:qr];
        [GlobalUtil pushNewQuickController:controller];
    };
    
    
    QSection *section4 = [[QSection alloc] initWithTitle:@""];
    
    [section4 addElement:[[QButtonElement alloc] initWithTitle:@"清空缓存"]];
    [root addSection:section4];
    
    QSection *section5 = [[QSection alloc] initWithTitle:@""];
    
    [section5 addElement:[[QButtonElement alloc] initWithTitle:@"退出登录"]];
    [root addSection:section5];
    
    
    
    root.appearance = [root.appearance copy];
    //root.appearance.tableBackgroundColor = [UIColor redColor];
    root.appearance.tableGroupedBackgroundColor =  [GlobalUtil colorWithArray:AppBgColor];
    //((QEntryElement *)[root elementWithKey:@"login"]).delegate = self;
    
    QAppearance *fieldsAppearance = [root.appearance copy];
    
    fieldsAppearance.backgroundColorEnabled = [GlobalUtil colorWithArray:TabBarBgColor];
    fieldsAppearance.actionColorEnabled = [UIColor whiteColor];
    
    for (int i=0; i<5; i++) {
        
        QSection* sec = [root getSectionForIndex:i];
        
        for (QElement* e in sec.elements) {
            e.appearance = fieldsAppearance;
        }
        
        
    }

    
    
    return root;
}

@end
