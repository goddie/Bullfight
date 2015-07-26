//
//  TopTabBar.h
//  Bullfight
//
//  Created by goddie on 15/7/12.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol TopTabBarDelegate <NSObject>
@required
-(void)tabChanged:(NSInteger)tabId;

@end


@interface TopTabBar : UIView
{
    id<TopTabBarDelegate> _delegate;
}

@property (strong,nonatomic) id<TopTabBarDelegate> delegate;

/**
 *  顶部标签
 *
 *  @param titles      <#titles description#>
 *  @param activeIndex 激活标签
 */
-(void)setButtons:(NSArray *)titles activeIndex:(NSInteger)activeIndex;

/**
 *  激活标签
 *
 *  @param index <#index description#>
 */
-(void)setActive:(NSInteger)index;
@end
