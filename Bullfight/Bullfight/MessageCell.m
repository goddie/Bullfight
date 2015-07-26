//
//  MessageCell.m
//  Bullfight
//
//  Created by goddie on 15/7/14.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MessageCell.h"
#import "UILabel+dynamicSizeMe.h"

@implementation MessageCell

- (void)awakeFromNib {
    // Initialization code
    
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"shared_avatar_mask_large.png" point:CGPointMake(28, 28)];
    
    self.txtContent.numberOfLines = 0;
    self.txtContent.lineBreakMode = NSLineBreakByWordWrapping;
    self.txtContent.preferredMaxLayoutWidth = 266;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
