//
//  LeaveCell.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "LeaveCell.h"

@implementation LeaveCell

- (void)awakeFromNib {
    // Initialization code
    
     [GlobalUtil setMaskImageQuick:self.img1 withMask:@"shared_avatar_mask_large.png" point:CGPointMake(42.0f, 42.0f)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)btn1Click:(id)sender {
    
    

}


/**
 *  设置按钮被选中
 *
 *  @param isChecked <#isChecked description#>
 */
-(void)setBtnChecked:(BOOL)isChecked
{
    if (isChecked) {
        [self.btn1 setBackgroundImage:[UIImage imageNamed:@"shared_checkbox_checked.png"] forState:UIControlStateNormal];
    }else
    {
        [self.btn1 setBackgroundImage:[UIImage imageNamed:@"shared_checkbox_unchecked.png"] forState:UIControlStateNormal];
    }
}

@end
