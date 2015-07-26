//
//  MemberCell.m
//  Bullfight
//
//  Created by goddie on 15/6/23.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MemberCell.h"

@implementation MemberCell

- (void)awakeFromNib {
    // Initialization code
    
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
    
    
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (IBAction)btn1Click:(id)sender {
}
@end
