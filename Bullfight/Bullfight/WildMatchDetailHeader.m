//
//  WildMatchDetailHeaderController.m
//  Bullfight
//
//  Created by goddie on 15/7/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "WildMatchDetailHeader.h"

#import "TeamFightDetailTwoController.h"
#import "TeamMessageTwoController.h"

@interface WildMatchDetailHeader ()

@end

@implementation WildMatchDetailHeader
{
    NSArray *titleArray;
    NSArray *controllerArray;
    UIViewController *parentController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [GlobalUtil set9PathImage:self.btn2 imageName:@"activities_btn.png" top:2 right:10];
    
    self.view.backgroundColor = [GlobalConst appBgColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)initButton:(UIViewController*)parent activeIndex:(NSInteger)activeIndex
{
    
    TeamFightDetailTwoController *c1 = [[TeamFightDetailTwoController alloc] initWithNibName:@"TeamFightDetailTwoController" bundle:nil];
    TeamMessageTwoController *c2 = [[TeamMessageTwoController alloc] initWithNibName:@"TeamMessageTwoController" bundle:nil];
    
    titleArray = @[@"比赛信息",@"用户评论"];
    controllerArray = @[c1,c2];
    parentController = parent;
    
    [self setButtons:titleArray vcs:controllerArray activeIndex:activeIndex];
    
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
    [parentController.navigationController pushViewController:controller animated:NO];
    
    //    [parentController.navigationController pushViewController:controller animated:NO];
    //    NSMutableArray *arr =[NSMutableArray arrayWithArray:parentController.navigationController.viewControllers];
    //    [arr removeObjectAtIndex:(arr.count-2)];
    //    parentController.navigationController.viewControllers  = arr;
    
}




- (IBAction)btn1Click:(id)sender {
}
- (IBAction)btn2Click:(id)sender {
}
@end
