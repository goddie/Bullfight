//
//  CreateTeamController.m
//  Bullfight
//  添加球队
//  Created by goddie on 15/6/22.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "CreateTeamController.h"

@interface CreateTeamController ()

@end

@implementation CreateTeamController

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
-(UIView*)getHeader
{
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 105, 105)];
    
    UIImage *avatar=  [GlobalUtil getMaskImage:@"james.png" mask:@"shared_avatar_mask_large.png"];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:avatar];
    
    [view1 addSubview:imageView];
    
    return view1;
}


- (QRootElement *)create
{
    QRootElement *root = [[QRootElement alloc] init];
    root.presentationMode = QPresentationModeModalForm;
    root.title = @"添加球队";
    root.controllerName = @"CreateTeamController";
    root.grouped = YES;
    
    
    QSection *section1 = [[QSection alloc] initWithTitle:@""];
    
    QLabelElement *element1 =  [[QLabelElement alloc] initWithTitle:@"球队名称" Value:@"北京潮人球队米"];
    QLabelElement *element2 =  [[QLabelElement alloc] initWithTitle:@"城市" Value:@"北京"];
    QLabelElement *element3 =  [[QLabelElement alloc] initWithTitle:@"成立时间" Value:@"1993-03-01"];
    QLabelElement *element4 =  [[QLabelElement alloc] initWithTitle:@"球队简介" Value:@"北京潮人球队米"];
 
    
    [section1 addElement:element1];
    [section1 addElement:element2];
    [section1 addElement:element3];
    [section1 addElement:element4];
    
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
