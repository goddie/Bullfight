//
//  ConfigHelpController.m
//  Bullfight
//  帮助
//  Created by goddie on 15/6/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "ConfigHelpController.h"

@interface ConfigHelpController ()

@end

@implementation ConfigHelpController

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
    root.title = @"帮助";
    root.controllerName = @"ConfigAccountController";
    root.grouped = YES;
    
    
    QSection *section1 = [[QSection alloc] initWithTitle:@"牛丸圈"];
    
    QButtonElement *element1 = [[QButtonElement alloc] initWithTitle:@"意见反馈"];
    QLabelElement *element2 = [[QLabelElement alloc] initWithTitle:@"官方微信号" Value:@"来斗牛"];
    
    [section1 addElement:element1];
    [section1 addElement:element2];

    
    [root addSection:section1];
    
    
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
