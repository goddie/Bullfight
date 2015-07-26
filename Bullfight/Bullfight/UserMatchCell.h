//
//  UserMatchCell.h
//  Bullfight
//
//  Created by goddie on 15/6/21.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface UserMatchCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *txt1;
@property (weak, nonatomic) IBOutlet UILabel *txt2;
@property (weak, nonatomic) IBOutlet UILabel *txtScore;
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UILabel *txtTeam1;
@property (weak, nonatomic) IBOutlet UILabel *txtTeam2;
@property (weak, nonatomic) IBOutlet UILabel *txt3;
@property (weak, nonatomic) IBOutlet UILabel *txt4;

@end
