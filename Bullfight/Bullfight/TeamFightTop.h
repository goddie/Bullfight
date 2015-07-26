//
//  TeamFightTop.h
//  Bullfight
//  团队娱乐 顶部
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopTabController.h"

@interface TeamFightTop : TopTabController
@property (weak, nonatomic) IBOutlet UIButton *btnAdd;
- (IBAction)btnAddClick:(id)sender;

@end
