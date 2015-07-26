//
//  UINavigationController+PopThenPush.h
//  Bullfight
//
//  Created by goddie on 15/7/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UINavigationController (PopThenPush)
-(void)popToViewController:(UIViewController*)rootViewController
    thenPushViewController:(UIViewController*)pushViewController;
@end
