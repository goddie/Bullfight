//
//  UserDetailCell.h
//  Bullfight
//  个人数据
//  Created by goddie on 15/6/22.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface UserDetailCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *txtPos;
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UILabel *txtName1;
@property (weak, nonatomic) IBOutlet UILabel *txtName2;

@property (weak, nonatomic) IBOutlet UILabel *txtScore1;

@property (weak, nonatomic) IBOutlet UILabel *txtHit1;

@property (weak, nonatomic) IBOutlet UILabel *txtThree1;
@property (weak, nonatomic) IBOutlet UILabel *txtPenalty1;
@property (weak, nonatomic) IBOutlet UILabel *txtBank1;

@property (weak, nonatomic) IBOutlet UILabel *txtAssist1;

@property (weak, nonatomic) IBOutlet UILabel *txtBlock1;
@property (weak, nonatomic) IBOutlet UILabel *txtBroke1;



@property (weak, nonatomic) IBOutlet UILabel *txtScore2;

@property (weak, nonatomic) IBOutlet UILabel *txtHit2;

@property (weak, nonatomic) IBOutlet UILabel *txtThree2;
@property (weak, nonatomic) IBOutlet UILabel *txtPenalty2;
@property (weak, nonatomic) IBOutlet UILabel *txtBank2;

@property (weak, nonatomic) IBOutlet UILabel *txtAssist2;

@property (weak, nonatomic) IBOutlet UILabel *txtBlock2;
@property (weak, nonatomic) IBOutlet UILabel *txtBroke2;




@end
