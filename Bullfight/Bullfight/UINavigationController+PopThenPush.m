//
//  UINavigationController+PopThenPush.m
//  Bullfight
//
//  Created by goddie on 15/7/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UINavigationController+PopThenPush.h"

@implementation UINavigationController (PopThenPush)

-(void)popToViewController:(UIViewController*)rootViewController
    thenPushViewController:(UIViewController*)pushViewController
{
    NSMutableArray *viewControllers = self.viewControllers.mutableCopy;
    
    // Pop viewcontrollers until we reach the rootViewController
    while(viewControllers.count >= 1) {
        id last = [viewControllers lastObject];
        if (last == rootViewController) break;
        [viewControllers removeLastObject];
    }
    
    // Bail out the array is empty. We expect the array to contain at least 1 element, the rootViewController.
    if (!viewControllers.count) {
        return;
    }
    
    // Push the new view controller
    [viewControllers addObject:pushViewController];
    self.viewControllers = viewControllers.copy;
}
@end