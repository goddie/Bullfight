//
//  SegmentedController.h
//  Bullfight
//
//  Created by goddie on 15/6/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentedController : UIViewController

/**
 *  设置标题和控件 各2个
 *
 *  @param titles      <#titles description#>
 *  @param controllers <#controllers description#>
 */
-(void)initTitlesAndControllers:(NSArray*)titles controllers:(NSArray*)controllers;

@end
