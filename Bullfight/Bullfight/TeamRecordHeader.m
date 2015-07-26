//
//  TeamRecordHeaderController.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamRecordHeader.h"
#import "TeamRecord.h"
#import "TeamRecordMember.h"
#import "TeamRecordData.h"
#import "TeamRecordHonor.h"


@interface TeamRecordHeader ()

@end

@implementation TeamRecordHeader


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [GlobalConst appBgColor];
    self.botView.backgroundColor = [GlobalConst appBgColor];
    
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
    [GlobalUtil setMaskImageQuick:self.img withMask:@"round_mask.png" point:CGPointMake(80, 80)];
    
    
    
    self.title = @"球队战绩";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btn1Click:(id)sender {
    NSLog(@"btn1Click");
}



-(void)initButton:(UIViewController*)parent activeIndex:(NSInteger)activeIndex
{
    
    TeamRecord *c1 = [[TeamRecord alloc] initWithNibName:@"TeamRecord" bundle:nil];
    TeamRecordMember *c2 = [[TeamRecordMember alloc] initWithNibName:@"TeamRecordMember" bundle:nil];
    TeamRecordData *c3 = [[TeamRecordData alloc] initWithNibName:@"TeamRecordData" bundle:nil];
    TeamRecordHonor *c4 = [[TeamRecordHonor alloc] initWithNibName:@"TeamRecordHonor" bundle:nil];
    
    titleArray = @[@"球队战绩",@"球队阵容",@"球队数据",@"获得荣誉"];
    controllerArray = @[c1,c2,c3,c4];
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
    parentController.navigationController.viewControllers = [NSArray arrayWithObject: controller];
    //[parentController.navigationController popToViewController:parentController thenPushViewController:controller];
    
}


@end
