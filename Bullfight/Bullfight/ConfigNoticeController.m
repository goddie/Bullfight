//
//  ConfigNoticeController.m
//  Bullfight
//  通知
//  Created by goddie on 15/6/19.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "ConfigNoticeController.h"

@interface ConfigNoticeController ()

@end

@implementation ConfigNoticeController

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
    
    
    QSection *section1 = [[QSection alloc] initWithTitle:@"牛丸圈"];
    
    QBooleanElement *element1 = [[QBooleanElement alloc] initWithTitle:@"有人喜欢" BoolValue:YES];
    QBooleanElement *element2 = [[QBooleanElement alloc] initWithTitle:@"有人评论" BoolValue:YES];
    QBooleanElement *element3 = [[QBooleanElement alloc] initWithTitle:@"获得徽章" BoolValue:YES];
    
    [section1 addElement:element1];
    [section1 addElement:element2];
    [section1 addElement:element3];
    
    QSection *section2 = [[QSection alloc] initWithTitle:@"约战"];
    QBooleanElement *element21 = [[QBooleanElement alloc] initWithTitle:@"比赛提醒" BoolValue:YES];
    QBooleanElement *element22 = [[QBooleanElement alloc] initWithTitle:@"有人评论" BoolValue:YES];
    QBooleanElement *element23 = [[QBooleanElement alloc] initWithTitle:@"获得徽章" BoolValue:YES];
    
    [section2 addElement:element21];
    [section2 addElement:element22];
    [section2 addElement:element23];
    
    [root addSection:section1];
    [root addSection:section2];
    
    
    root.appearance = [root.appearance copy];
    root.appearance.tableGroupedBackgroundColor =  [GlobalUtil colorWithArray:AppBgColor];
    
    QAppearance *fieldsAppearance = [root.appearance copy];
    
    fieldsAppearance.backgroundColorEnabled = [GlobalUtil colorWithArray:TabBarBgColor];
    fieldsAppearance.actionColorEnabled = [UIColor whiteColor];
    fieldsAppearance.labelColorEnabled = [UIColor whiteColor];
    
    QAppearance *secAppearance = [root.appearance copy];
    secAppearance.sectionTitleColor = [GlobalUtil colorWithArray:ButtonColor];
    secAppearance.sectionTitleFont = [UIFont systemFontOfSize:16];
    
    
    for (QSection *sec in root.sections) {
        
        for (QElement* e in sec.elements) {
            e.appearance = fieldsAppearance;
        }
    }
    
    return root;
    
}

@end
