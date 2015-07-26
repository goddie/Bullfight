//
//  ManaTeamController.m
//  Bullfight
//  球队资料
//  Created by goddie on 15/6/23.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "ManaTeamController.h"
#import "NYSegmentedControl.h"
#import "CreateTeamController.h"
#import "ManaMemberController.h"

@interface ManaTeamController ()

@end



@implementation ManaTeamController

NYSegmentedControl *segmented;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIColor *color1 = [GlobalUtil colorWithArray: SegmentBtnColor];
    UIColor *color2 = [GlobalUtil colorWithArray: AppBgColor];
    
    segmented = [[NYSegmentedControl alloc] initWithItems:@[@"球队资料", @"队员管理"]];
    segmented.titleTextColor = [GlobalUtil colorWithArray: ButtonColor];
    segmented.selectedTitleTextColor = [UIColor whiteColor];
    segmented.titleFont =[UIFont systemFontOfSize:16.0f];
    segmented.selectedTitleFont = [UIFont systemFontOfSize:16.0f];
    segmented.segmentIndicatorBackgroundColor = color1;
    segmented.backgroundColor = color2;
    segmented.borderWidth = 2.0f;
    segmented.borderColor = color1;
    segmented.segmentIndicatorBorderWidth = 0;
    segmented.segmentIndicatorInset = 4.0f;
    segmented.segmentIndicatorBorderColor = color1;
    [segmented sizeToFit];
    segmented.cornerRadius = CGRectGetHeight(segmented.frame) / 2.0f;
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_7_0
    segmented.usesSpringAnimations = YES;
#endif
    
    segmented.frame = CGRectMake(0, 20.0f, 250.0f, 36.0f);
    
    [segmented addTarget:self action:@selector(segmentSelected) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:segmented];
    
    QRootElement *root = [[CreateTeamController alloc] create];
    
    CreateTeamController *control1 = [[CreateTeamController alloc] initWithRoot:root];
    
    ManaMemberController *control2 = [[ManaMemberController alloc] initWithNibName:@"ManaMemberController" bundle:nil];
    
    [self addChildViewController:control1];
    
    [self addChildViewController:control2];
    
    [self.contentView addSubview:control2.view];

    
    
    //control2.view.autoresizesSubviews = YES;
    //control2.view.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    
    //    [self transitionFromViewController:self toViewController:control1 duration:1.0 options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:^(BOOL finished) {
    //
    //
    //        if (finished) {
    //
    //            [tabController didMoveToParentViewController:self];
    //            [self willMoveToParentViewController:nil];
    //
    //        }
    //
    //    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)segmentSelected
{
    
    if(segmented.selectedSegmentIndex==0)
    {
        
    }
    
    if(segmented.selectedSegmentIndex==1)
    {
        
    }
    
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
