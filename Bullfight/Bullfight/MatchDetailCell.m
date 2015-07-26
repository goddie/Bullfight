//
//  MatchDetailCell.m
//  Bullfight
//
//  Created by goddie on 15/7/11.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MatchDetailCell.h"


@implementation MatchDetailCell

- (void)awakeFromNib {
    // Initialization code
    
    self.backgroundColor = [GlobalConst lightAppBgColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
