//
//  WildFightCell.m
//  Bullfight
//
//  Created by goddie on 15/6/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "WildFightCell.h"

@implementation WildFightCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [GlobalConst appBgColor];
    self.view1.backgroundColor = [GlobalConst lightAppBgColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
