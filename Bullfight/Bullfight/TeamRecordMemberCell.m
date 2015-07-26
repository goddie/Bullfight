//
//  TeamRecordDataCell.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamRecordMemberCell.h"

@implementation TeamRecordMemberCell

- (void)awakeFromNib {
    // Initialization code
    
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"shared_avatar_mask_large.png" point:CGPointMake(42.0f, 42.0f)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
