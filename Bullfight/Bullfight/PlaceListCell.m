//
//  PlaceListCell.m
//  Bullfight
//
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "PlaceListCell.h"


@implementation PlaceListCell

- (void)awakeFromNib {
    // Initialization code
    
    self.backgroundColor = [GlobalConst appBgColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
