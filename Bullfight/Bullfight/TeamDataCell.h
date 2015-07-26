//
//  TeamDataCell.h
//  Bullfight
//
//  Created by goddie on 15/7/13.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface TeamDataCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *txtMid;
@property (weak, nonatomic) IBOutlet UILabel *txt1;
@property (weak, nonatomic) IBOutlet UILabel *txt2;

@end
