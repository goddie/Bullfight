//
//  AddTeamController.m
//  Bullfight
//  创建球队
//  Created by goddie on 15/7/22.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "AddTeamController.h"

@interface AddTeamController ()

@end

@implementation AddTeamController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"新建队伍";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView*)getHeader
{
    
    float w1 = 80.0f;
    
    float w = [UIScreen mainScreen].bounds.size.width;
    
    float c = (w - w1)*0.5f;
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(c, 10, w, 160)];
    
    //    view1.backgroundColor = [UIColor redColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(c, 0, w1, w1)];
    imageView.image = [UIImage imageNamed:@"james.png"];
    [GlobalUtil setMaskImageQuick:imageView withMask:@"custom_item_bg.png" point:CGPointMake(w1, w1)];
    [view1 addSubview:imageView];
    
    
    
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(c, w1+15, w1, 26)];
    
    [btn setTitle:@"选择队徽" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14.0f];
    [btn setTitleColor:[GlobalConst tabNormalColor] forState:UIControlStateNormal];
    
    [GlobalUtil set9PathImage:btn imageName:@"activities_btn.png" top:2 right:10];
    
    [view1 addSubview:btn];
    
    //    view1.translatesAutoresizingMaskIntoConstraints = NO;
    
    //    NSLayoutConstraint *const1 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:100];
    //
    //    NSLayoutConstraint *const2 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:100];
    
    
    //    NSLayoutConstraint *const3 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:parent attribute:NSLayoutAttributeTop multiplier:1.0f constant:30];
    //
    //    NSLayoutConstraint *const4 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:parent attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:30];
    
    
    //    [view1 addConstraints:@[const1,const2]];
    
    //    [view1 addConstraints:@[const3,const4]];
    
    return view1;
}


-(UIView*)getFooter
{
    
    float w1 = 80.0f;
    
    float w = [UIScreen mainScreen].bounds.size.width;
    
    float c = (w - w1)*0.5f;
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, w, 50)];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(c, 20, w1, 26)];
    
    [btn setTitle:@"保存" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14.0f];
    [btn setTitleColor:[GlobalConst tabNormalColor] forState:UIControlStateNormal];
    
    
    [btn addTarget:self action:@selector(footerClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [GlobalUtil set9PathImage:btn imageName:@"activities_btn.png" top:2 right:10];
    
    [view1 addSubview:btn];
    
    return  view1;
}


-(void)footerClick:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


- (QRootElement *)create
{
    QRootElement *root = [[QRootElement alloc] init];
    root.presentationMode = QPresentationModeModalForm;
    root.title = @"设置";
    root.controllerName = @"ConfigAccountController";
    root.grouped = YES;
    
    
    QSection *section1 = [[QSection alloc] initWithTitle:@""];
    
    section1.headerView = [self getHeader];
    
    section1.footerView = [self getFooter];
    
    QEntryElement *element1 = [[QEntryElement alloc] initWithTitle:@"球队名称" Value:@"北京潮人球迷队"];
    QEntryElement *element2 = [[QEntryElement alloc] initWithTitle:@"城市" Value:@"上海"];
    QEntryElement *element3 = [[QEntryElement alloc] initWithTitle:@"成立时间" Value:@"2015-02-12"];
    QMultilineElement *element4 = [[QMultilineElement alloc] initWithTitle:@"球队简介" value:@""];
    element4.key = @"multiline";
    
    
    
    element1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element2.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element3.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    element4.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    
    
    [section1 addElement:element1];
    [section1 addElement:element2];
    [section1 addElement:element3];
    [section1 addElement:element4];
    
    [root addSection:section1];
    
    
    root.appearance = [root.appearance copy];
    root.appearance.tableGroupedBackgroundColor =  [GlobalConst appBgColor];
    
    QAppearance *fieldsAppearance = [root.appearance copy];
    
    
    fieldsAppearance.backgroundColorEnabled = [GlobalConst appBgColor];
    fieldsAppearance.actionColorEnabled = [UIColor whiteColor];
    fieldsAppearance.labelColorEnabled = [UIColor whiteColor];
    fieldsAppearance.labelFont = [UIFont systemFontOfSize:14];
    fieldsAppearance.sectionTitleColor = [GlobalUtil colorWithArray:ButtonColor];
    fieldsAppearance.sectionTitleFont = [UIFont systemFontOfSize:14];
    fieldsAppearance.valueColorEnabled = [GlobalConst tabNormalColor];
    fieldsAppearance.valueFont = [UIFont systemFontOfSize:14];
    fieldsAppearance.valueAlignment = NSTextAlignmentRight;
    
    
    
    for (QSection *sec in root.sections) {
        
        for (QElement* e in sec.elements) {
            
            e.appearance = fieldsAppearance;
        }
    }
    
    return root;
    
}

@end
