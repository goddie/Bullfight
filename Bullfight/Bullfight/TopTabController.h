//
//  TopTabController.h
//  Bullfight
//  顶部标签容器
//  Created by goddie on 15/7/12.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopTabBar.h"
 

@interface TopTabController : UIViewController<TopTabBarDelegate>
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIView *botView;


/**
 *  标题及对应的Controller
 *
 *  @param titles      <#titles description#>
 *  @param controller  <#controller description#>
 *  @param activeIndex <#activeIndex description#>
 */
-(void)setButtons:(NSArray*)titles vcs:(NSArray*)vcs activeIndex:(NSInteger)activeIndex;

@end
