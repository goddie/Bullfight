//
//  MatchBeginCell.m
//  Bullfight
//
//  Created by goddie on 15/7/21.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MatchBeginCell.h"
#import "MyTeamController.h"

@implementation MatchBeginCell

- (void)awakeFromNib {
    // Initialization code
    
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 55.0f, 55.0f)];
    iv.image = [UIImage imageNamed:@"shared_icon_badge_active.png"];
    self.viewTop.backgroundColor = [UIColor clearColor];
    [self.viewTop addSubview:iv];
    
    [GlobalUtil set9PathImage:self.imgbot imageName:@"cellBottom.png" top:2.0f right:10.0f];
    
    //self.backgroundColor = [GlobalConst appBgColor];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(7, 7, 55, 22)];
    label.text  = @"未开始";
    
    [self.viewTop addSubview:label];
    
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:12];
    //label.backgroundColor = [UIColor redColor];
    //rotate label in 45 degrees
    label.transform = CGAffineTransformMakeRotation( M_PI/4 );
    
    
    [GlobalUtil setMaskImageQuick:self.img1 withMask:@"round_mask.png" point:CGPointMake(55.0f, 55.0f)];
    [GlobalUtil setMaskImageQuick:self.img2 withMask:@"round_mask.png" point:CGPointMake(55.0f, 55.0f)];
    
//    [GlobalUtil addTouchToView:self sender:[self.viewTop viewWithTag:11]  action:@selector(touchAction:)];
//    [GlobalUtil addTouchToView:self sender:[self.viewTop viewWithTag:12]  action:@selector(touchAction:)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
//
//-(void)touchAction:(id)sender
//{
//    UITapGestureRecognizer *senderView =(UITapGestureRecognizer*)sender;
//    
//    if (senderView.view.tag == 11) {
//        
//        [self.delegate pushTeamController:self.cellData];
//    }
//    
//    if (senderView.view.tag == 12) {
//        NSLog(@"20");
//    }
//    
//    
//}



@end
