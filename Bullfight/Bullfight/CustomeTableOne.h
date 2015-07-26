//
//  CustomeTableOne.h
//  Bullfight
//
//  Created by goddie on 15/7/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomeTableOne : UITableViewController




-(void)leftClick;

/**
 *  第一种样式
 *
 *  @param index <#index description#>
 *
 *  @return <#return value description#>
 */
-(UIView*)getHeader:(NSInteger)style index:(NSInteger)index;


@end
