//
//  MatchHeaderController.m
//  Bullfight
//  比赛顶部
//  Created by goddie on 15/7/12.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MatchHeaderController.h"
#import "MidTabBar.h"

#import "TeamFightDetailController.h"
#import "TeamDataController.h"
#import "TeamMemberController.h"
#import "TeamMessageController.h"

#import "UINavigationController+PopThenPush.h"


@interface MatchHeaderController ()

@end

@implementation MatchHeaderController
{
    NSArray *titleArray;
    NSArray *controllerArray;
    UIViewController *parentController;
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [GlobalConst appBgColor];
    
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"round_mask.png" point:CGPointMake(55, 55)];
    [GlobalUtil setMaskImageQuick:self.img2 withMask:@"round_mask.png" point:CGPointMake(55, 55)];
}


-(void)initButton:(UIViewController*)parent activeIndex:(NSInteger)activeIndex
{

    TeamFightDetailController *c1 = [[TeamFightDetailController alloc] initWithNibName:@"TeamFightDetailController" bundle:nil];
    TeamDataController *c2 = [[TeamDataController alloc] initWithNibName:@"TeamDataController" bundle:nil];
    TeamMemberController *c3 = [[TeamMemberController alloc] initWithNibName:@"TeamMemberController" bundle:nil];
    TeamMessageController *c4 = [[TeamMessageController alloc] initWithNibName:@"TeamMessageController" bundle:nil];
    
    titleArray = @[@"比赛信息",@"球队数据",@"个人数据",@"赛前动员"];
    controllerArray = @[c1,c2,c3,c4];
    parentController = parent;

    [self setButtons:titleArray vcs:controllerArray activeIndex:activeIndex];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setButtons:(NSArray*)titles vcs:(NSArray*)vcs activeIndex:(NSInteger)activeIndex
{
    MidTabBar *midTabBar =  [[MidTabBar alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, 36.0f)];
    [midTabBar setButtons:titles activeIndex:activeIndex];
    
    midTabBar.delegate = self;
    
    [self.botView addSubview:midTabBar];
    
    midTabBar.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:midTabBar attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0];
    
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:midTabBar attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0];
    
    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:midTabBar attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0];
    
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:midTabBar attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeTop multiplier:1.0f constant:0];
    
    [self.botView addConstraints:@[constraint1,constraint2,constraint3,constraint4]];
}

-(void)tabChanged:(NSInteger)tabId
{
    //NSLog(@"tabChanged");
    UIViewController *controller = [controllerArray objectAtIndex:tabId];
    parentController.navigationController.viewControllers = [NSArray arrayWithObject: controller];
    //[parentController.navigationController popToViewController:parentController thenPushViewController:controller];
    
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
