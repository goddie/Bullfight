//
//  MatchEndCell.h
//  Bullfight
//
//  Created by goddie on 15/7/21.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface MatchEndCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *txt1;
@property (weak, nonatomic) IBOutlet UILabel *txt2;

@property (weak, nonatomic) IBOutlet UILabel *team1;
@property (weak, nonatomic) IBOutlet UILabel *team2;
 
@property (weak, nonatomic) IBOutlet UIImageView *img1;

@property (weak, nonatomic) IBOutlet UIImageView *img2;

@property (weak, nonatomic) IBOutlet UIImageView *imgbot;
@property (weak, nonatomic) IBOutlet UIView *viewTop;
@property (weak, nonatomic) IBOutlet UILabel *score;
@end
