//
//  TeamMemberSimpleCell.m
//  Bullfight
//
//  Created by goddie on 15/7/13.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamMemberSimpleCell.h"

@implementation TeamMemberSimpleCell

- (void)awakeFromNib {
    // Initialization code
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"shared_avatar_mask_large.png" point:CGPointMake(55, 55)];
    [GlobalUtil setMaskImageQuick:self.img2 withMask:@"shared_avatar_mask_large.png" point:CGPointMake(55, 55)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
