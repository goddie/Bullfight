//
//  MatchController.m
//  Bullfight
//  比赛
//  Created by goddie on 15/6/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MatchController.h"
#import "TeamFightController.h"
#import "WildFightController.h"

@interface MatchController ()

@end

@implementation MatchController

UIView *view1;
UIView *view2;

UITableViewController *controller1;
UITableViewController *controller2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.titleView = [self getTitleView];
    [self initContainer];
    
    controller1 = [[TeamFightController alloc] initWithNibName:@"TeamFightController" bundle:nil];
    controller2 = [[WildFightController alloc] initWithNibName:@"WildFightController" bundle:nil];
    
    [view2 addSubview:controller1.view];
    
    controller1.view.translatesAutoresizingMaskIntoConstraints=NO;
    
    [view2 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[table]-0-|" options:0 metrics:0 views:@{@"table":controller1.view}]];
    [view2 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[table]-0-|" options:0 metrics:0 views:@{@"table":controller1.view}]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  标题按钮
 *
 *  @return <#return value description#>
 */
-(UIView*)getTitleView
{
    UIView *titleView= [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:titleView.frame];
    btn.titleLabel.text = @"北京";
    btn.tintColor = [UIColor whiteColor];
    
    [titleView addSubview:btn];
    
    return  titleView;
}

/**
 *  设置2个容器一个放seg，一个放controller
 */
-(void)initContainer
{

    view1 = [[UIView alloc] init];
    [view1 setBackgroundColor:[GlobalUtil colorWithArray:AppBgColor]];
    [self.view addSubview:view1];
    
    view1.translatesAutoresizingMaskIntoConstraints =NO;
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[view1]-0-|" options:0 metrics:nil views:@{@"view1":view1}]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view1(70)]" options:0 metrics:nil views:@{@"view1":view1}]];
    
    view2 = [[UIView alloc] init];
    [view2 setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:view2];
    
    view2.translatesAutoresizingMaskIntoConstraints =NO;
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[view2]-0-|" options:0 metrics:nil views:@{@"view2":view2}]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[view1]-0-[view2]-|" options:0 metrics:nil views:@{@"view1":view1,@"view2":view2}]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
