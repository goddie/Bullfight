//
//  CellTouchDelegate.h
//  Bullfight
//
//  Created by goddie on 15/7/22.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CellTouchDelegate <NSObject>




/**
 *  打开队伍界面
 *
 *  @param teamId <#teamId description#>
 */
-(void)pushTeamController:(id)tag;

@end
