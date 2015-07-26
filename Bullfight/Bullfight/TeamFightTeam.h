//
//  TeamAndTypeController.h
//  Bullfight
//
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeamFightTeam : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgTeam;

@property (weak, nonatomic) IBOutlet UIImageView *img1;

@property (weak, nonatomic) IBOutlet UIImageView *img3;
@property (weak, nonatomic) IBOutlet UIImageView *img4;
@property (weak, nonatomic) IBOutlet UIImageView *img5;
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnClick:(id)sender;

@end
