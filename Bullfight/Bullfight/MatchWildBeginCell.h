//
//  MatchWildBeginCell.h
//  Bullfight
//
//  Created by goddie on 15/7/21.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface MatchWildBeginCell : BaseTableViewCell
 
@property (weak, nonatomic) IBOutlet UILabel *txt1;
@property (weak, nonatomic) IBOutlet UILabel *txt2;
@property (weak, nonatomic) IBOutlet UILabel *txt3;
@property (weak, nonatomic) IBOutlet UILabel *txt4;

@property (weak, nonatomic) IBOutlet UIImageView *imgbot;
@property (weak, nonatomic) IBOutlet UIView *viewTop;
@end
