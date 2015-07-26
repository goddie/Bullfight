//
//  MyTeamEditMemberCell.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyTeamEditMemberCell.h"

@implementation MyTeamEditMemberCell

- (void)awakeFromNib {
    // Initialization code
    
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"shared_avatar_mask_large.png" point:CGPointMake(42.0f, 42.0f)];
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



-(void)setBtnTitle:(NSString*)title
{
    self.btn1.titleLabel.text = title;
}

@end
