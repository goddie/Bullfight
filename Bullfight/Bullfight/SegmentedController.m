//
//  SegmentedController.m
//  Bullfight
//  顶部有70像素分段按钮的controller
//  Created by goddie on 15/6/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "SegmentedController.h"
#import "NYSegmentedControl.h"

@interface SegmentedController ()

@end

@implementation SegmentedController
{
    UIView *view1;
    UIView *view2;
    NSString *title1;
    NSString *title2;
    UIViewController *controller1;
    UIViewController *controller2;
    
    NYSegmentedControl *segmented;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  设置标题和控件 各2个
 *
 *  @param titles      <#titles description#>
 *  @param controllers <#controllers description#>
 */
-(void)initTitlesAndControllers:(NSArray*)titles controllers:(NSArray*)controllers
{
    if([titles count]!=2 || [controllers count]!=2)
    {
        return;
    }
    
    title1 = [titles objectAtIndex:0];
    title2 = [titles objectAtIndex:1];
    controller1 = [controllers objectAtIndex:0];
    controller2 = [controllers objectAtIndex:1];
    
    [self initContainer];
    [self initSegmetedBar];
    [self addSubController1];
}





-(void)addSubController1
{
    [self addChildViewController:controller1];
    [view2 addSubview:controller1.view];
    controller1.view.translatesAutoresizingMaskIntoConstraints=NO;
    [view2 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[table]-0-|" options:0 metrics:0 views:@{@"table":controller1.view}]];
    [view2 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[table]-0-|" options:0 metrics:0 views:@{@"table":controller1.view}]];
    
}

-(void)addSubController2
{
    [self addChildViewController:controller2];
    [view2 addSubview:controller2.view];
    controller2.view.translatesAutoresizingMaskIntoConstraints=NO;
    [view2 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[table]-0-|" options:0 metrics:0 views:@{@"table":controller2.view}]];
    [view2 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[table]-0-|" options:0 metrics:0 views:@{@"table":controller2.view}]];

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

-(void)initSegmetedBar
{
    UIColor *color1 = [GlobalUtil colorWithArray: SegmentBtnColor];
    UIColor *color2 = [GlobalUtil colorWithArray: AppBgColor];
    
    segmented = [[NYSegmentedControl alloc] initWithItems:@[title1, title2]];
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
    
    //segmented.frame = CGRectMake(0, 20.0f, 250.0f, 36.0f);
    
    [segmented addTarget:self action:@selector(segmentSelected) forControlEvents:UIControlEventValueChanged];
    
    [view1 addSubview:segmented];
    segmented.translatesAutoresizingMaskIntoConstraints=NO;
    
    [view1 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[seg(250)]" options:0 metrics:nil views:@{@"seg":segmented}]];
    [view1 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[seg(36)]" options:0 metrics:nil views:@{@"seg":segmented}]];
    
    [view1 addConstraint:[NSLayoutConstraint constraintWithItem:segmented attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    [view1 addConstraint:[NSLayoutConstraint constraintWithItem:segmented attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];

}

/**
 *  分段点击
 */
-(void)segmentSelected
{
    
    if(segmented.selectedSegmentIndex==0)
    {
        [self addSubController1];
        [self transitionFromViewController:controller2 toViewController:controller1 duration:2 options:UIViewAnimationOptionTransitionNone animations:^{
        }  completion:^(BOOL finished) {
            [self containerRemoveChildViewController:controller2];
        }];
        
    }
    
    if(segmented.selectedSegmentIndex==1)
    {
        [self addSubController2];
        [self transitionFromViewController:controller1 toViewController:controller2 duration:2 options:UIViewAnimationOptionTransitionNone animations:^{
        }  completion:^(BOOL finished) {
            [self containerRemoveChildViewController:controller1];
        }];

    }

}

- (void)containerAddChildViewController:(UIViewController *)childViewController {
    
    [self addChildViewController:childViewController];
    [self.view addSubview:childViewController.view];
    [childViewController didMoveToParentViewController:self];
    
}

- (void)containerRemoveChildViewController:(UIViewController *)childViewController {
    
    [childViewController willMoveToParentViewController:nil];
    [childViewController.view removeFromSuperview];
    [childViewController removeFromParentViewController];
    
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
