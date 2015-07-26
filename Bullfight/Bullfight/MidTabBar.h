//
//  MidTabBar.h
//  Bullfight
//
//  Created by goddie on 15/6/28.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MidTabTouchDelegate <NSObject>
@required
-(void)tabChanged:(NSInteger)tabId;

@end

@interface MidTabBar : UIView
{
    id<MidTabTouchDelegate> _delegate;
}

@property (strong,nonatomic) id<MidTabTouchDelegate> delegate;


-(void)setButtons:(NSArray *)titles activeIndex:(NSInteger)activeIndex;

@end

