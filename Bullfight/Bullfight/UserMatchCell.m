//
//  UserMatchCell.m
//  Bullfight
//
//  Created by goddie on 15/6/21.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UserMatchCell.h"

@implementation UserMatchCell

- (void)awakeFromNib {
    // Initialization code
    
    self.backgroundColor = [GlobalConst appBgColor];
    
    
    
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"round_mask.png" point:CGPointMake(55, 55)];
    [GlobalUtil setMaskImageQuick:self.img2 withMask:@"round_mask.png" point:CGPointMake(55, 55)];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
