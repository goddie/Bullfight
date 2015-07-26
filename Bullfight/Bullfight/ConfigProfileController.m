//
//  ConfigProfileController.m
//  Bullfight
//  编辑个人资料
//  Created by goddie on 15/6/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "ConfigProfileController.h"

@interface ConfigProfileController ()

@end

@implementation ConfigProfileController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title  = @"个人资料";
    
    [self addRightNavButton];
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


-(void)addRightNavButton
{
    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [refreshButton setFrame:CGRectMake(0,0,40,30)];
    refreshButton.userInteractionEnabled = YES;
    
    [refreshButton setTitle:@"保存" forState:UIControlStateNormal];
    refreshButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [refreshButton setTitleColor:[GlobalConst orangeColor] forState:UIControlStateNormal];
    
    //[refreshButton setImage:[UIImage imageNamed:@"nav_btn_add.png"] forState:UIControlStateNormal];
    
    // ASSIGNING THE BUTTON WITH IMAGE TO BACK BAR BUTTON
    
    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
    
    self.navigationItem.rightBarButtonItem = refreshBarButton;
    
    [refreshButton addTarget:self action:@selector(rightPush) forControlEvents:UIControlEventTouchUpInside];
}


-(void)rightPush
{
    
}
 
-(UIView*)getHeader
{
    
    float w = [UIScreen mainScreen].bounds.size.width;
    
    float c = (w - 100.0f)*0.5f;
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(c, 10, w, 160)];
    
//    view1.backgroundColor = [UIColor redColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(c, 0, 100, 100)];
    imageView.image = [UIImage imageNamed:@"james.png"];
    [GlobalUtil setMaskImageQuick:imageView withMask:@"shared_avatar_mask_large.png" point:CGPointMake(100, 100)];
    [view1 addSubview:imageView];
    
    

    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(c, 110, 100, 30)];
    
    [btn setTitle:@"更换头像" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14.0f];
    btn.titleLabel.textColor = [GlobalConst orangeColor];
    
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


- (QRootElement *)create
{
    QRootElement *root = [[QRootElement alloc] init];
    root.presentationMode = QPresentationModeModalForm;
    root.title = @"设置";
    root.controllerName = @"ConfigAccountController";
    root.grouped = YES;
    
    
    QSection *section1 = [[QSection alloc] initWithTitle:@""];
    
    section1.headerView = [self getHeader];
    
    QLabelElement *element1 = [[QLabelElement alloc] initWithTitle:@"用户名" Value:@"小力丸"];
    QLabelElement *element2 = [[QLabelElement alloc] initWithTitle:@"出生日期" Value:@"2015-02-12"];
    QLabelElement *element3 = [[QLabelElement alloc] initWithTitle:@"所在地区" Value:@"上海"];
    QLabelElement *element4 = [[QLabelElement alloc] initWithTitle:@"球龄" Value:@"5年"];
    QLabelElement *element5 = [[QLabelElement alloc] initWithTitle:@"身高" Value:@"183cm"];
    QLabelElement *element6 = [[QLabelElement alloc] initWithTitle:@"体重" Value:@"82kg"];
    QLabelElement *element7 = [[QLabelElement alloc] initWithTitle:@"擅长位置" Value:@"中锋"];
    
    
    element1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element2.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element3.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element4.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element5.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element6.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    element7.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    
    [section1 addElement:element1];
    [section1 addElement:element2];
    [section1 addElement:element3];
    [section1 addElement:element4];
    [section1 addElement:element5];
    [section1 addElement:element6];
    [section1 addElement:element7];
    
    [root addSection:section1];
    
    
    root.appearance = [root.appearance copy];
    root.appearance.tableGroupedBackgroundColor =  [GlobalConst appBgColor];
    
    QAppearance *fieldsAppearance = [root.appearance copy];
    
    
    fieldsAppearance.backgroundColorEnabled = [GlobalConst appBgColor];
    fieldsAppearance.actionColorEnabled = [UIColor whiteColor];
    fieldsAppearance.labelColorEnabled = [UIColor whiteColor];
    fieldsAppearance.labelFont = [UIFont systemFontOfSize:14];
    
    //QAppearance *secAppearance = [root.appearance copy];
    fieldsAppearance.sectionTitleColor = [GlobalUtil colorWithArray:ButtonColor];
    fieldsAppearance.sectionTitleFont = [UIFont systemFontOfSize:14];
    fieldsAppearance.valueColorEnabled = [GlobalConst tabNormalColor];
    fieldsAppearance.valueFont = [UIFont systemFontOfSize:14];
    
    for (QSection *sec in root.sections) {
        
        for (QElement* e in sec.elements) {
            
            e.appearance = fieldsAppearance;
        }
    }
    
    return root;
    
}

@end
