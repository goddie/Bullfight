//
//  TopTabController.m
//  Bullfight
//
//  Created by goddie on 15/7/12.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TopTabController.h"
#import "TopTabBar.h"
#import "NoticeController.h"
#import "MatchListController.h"

@interface TopTabController ()

@end

@implementation TopTabController
{
    TopTabBar *topTabBar;
    NSArray *controllers;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.topView.backgroundColor = [GlobalConst appBgColor];
 
    [self addLeftNavButton];
    [self addRightNavButton];
    
    [self tabChanged:0];
    
    
}


-(void)addLeftNavButton
{
    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [refreshButton setFrame:CGRectMake(0,0,26,30)];
    refreshButton.userInteractionEnabled = YES;
    [refreshButton setImage:[UIImage imageNamed:@"teamIcon.png"] forState:UIControlStateNormal];
    
    [GlobalUtil setMaskImageQuick:refreshButton withMask:@"shared_avatar_mask_medium.png" point:CGPointMake(26, 30)];
    
    // ASSIGNING THE BUTTON WITH IMAGE TO BACK BAR BUTTON
    
    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
    
    self.navigationItem.leftBarButtonItem = refreshBarButton;
    
    [refreshButton addTarget:self action:@selector(leftPush) forControlEvents:UIControlEventTouchUpInside];
}

-(void)addRightNavButton
{
    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [refreshButton setFrame:CGRectMake(0,0,26,30)];
    refreshButton.userInteractionEnabled = YES;
    [refreshButton setImage:[UIImage imageNamed:@"nav_filter.png"] forState:UIControlStateNormal];
    
    // ASSIGNING THE BUTTON WITH IMAGE TO BACK BAR BUTTON
    
    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
    
    self.navigationItem.rightBarButtonItem = refreshBarButton;
    
    [refreshButton addTarget:self action:@selector(rightPush) forControlEvents:UIControlEventTouchUpInside];
}



-(void)leftPush
{
    NoticeController *c = [[NoticeController alloc] initWithNibName:@"NoticeController" bundle:nil];
    [self.navigationController pushViewController:c animated:YES];
}

-(void)rightPush
{
    MatchListController *c = [[MatchListController alloc] initWithNibName:@"MatchListController" bundle:nil];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:c];
    
    
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setButtons:(NSArray*)titles vcs:(NSArray*)vcs activeIndex:(NSInteger)activeIndex
{
    
    controllers = [NSArray arrayWithArray:vcs];
    
    topTabBar = [[TopTabBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 36.0f)];
    [self.topView addSubview:topTabBar];
    topTabBar.delegate = self;
    topTabBar.translatesAutoresizingMaskIntoConstraints = NO;
    
    float w = 85.0f*titles.count+10.0f;
    
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:topTabBar attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.topView  attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0];
    
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:topTabBar attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.topView  attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0];
    
    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:topTabBar attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1.0f constant:36.0f];
    
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:topTabBar attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1.0f constant:w];
    
    [topTabBar addConstraints:@[constraint3,constraint4]];
    [self.topView addConstraints:@[constraint1,constraint2]];
    
    [topTabBar setButtons:titles activeIndex:activeIndex];
    
}


-(void)tabChanged:(NSInteger)tabId
{
    
    [self controllerChanged:tabId];
    
//    NSLog(@"tabChanged %i",tabId);
    [topTabBar setActive:tabId];
}


-(void)controllerChanged:(NSInteger)tabId
{
    
    
    for (UIViewController *sub in [self.childViewControllers objectEnumerator]) {
        [sub removeFromParentViewController];
    }
    
    
    
    UIViewController *sub = [controllers objectAtIndex:tabId];
    
    [self addChildViewController:sub];
    
    [self.botView addSubview:sub.view];
    
    
    //[sub.view removeConstraints:sub.view.constraints];
    
    sub.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *constrain1 = [NSLayoutConstraint constraintWithItem:sub.view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0];
    
    NSLayoutConstraint *constrain2 = [NSLayoutConstraint constraintWithItem:sub.view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0];
    
    
    NSLayoutConstraint *constrain3 = [NSLayoutConstraint constraintWithItem:sub.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeTop multiplier:1.0f constant:0];
    
    NSLayoutConstraint *constrain4 = [NSLayoutConstraint constraintWithItem:sub.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.botView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0];
    
    
    //[self.botView removeConstraints:self.botView.constraints];
    [self.botView addConstraints:@[constrain1,constrain2,constrain3,constrain4]];
    
    
//    NSArray *arr1  = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[view]-0-|" options:0 metrics:nil views:@{@"view":sub.view}];
//    NSArray *arr2  = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[view]-0-|" options:0 metrics:nil views:@{@"view":sub.view}];
//    
//    [self.botView addConstraints:arr1];
//    [self.botView addConstraints:arr2];
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
