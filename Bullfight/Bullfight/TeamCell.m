//
//  TeamCell.m
//  Bullfight
//
//  Created by goddie on 15/6/22.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamCell.h"

@implementation TeamCell

- (void)awakeFromNib {
    
    // Initialization code
    
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"round_mask.png" point:CGPointMake(80, 80)];
    
    self.backgroundColor  =[GlobalConst appBgColor];
}

@end
