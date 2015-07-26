//
//  MatchBeginCell.h
//  Bullfight
//
//  Created by goddie on 15/7/21.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellTouchDelegate.h"
#import "BaseTableViewCell.h"

@interface MatchBeginCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *txt1;
@property (weak, nonatomic) IBOutlet UILabel *txt2;
@property (weak, nonatomic) IBOutlet UILabel *txt3;
@property (weak, nonatomic) IBOutlet UILabel *team1;
@property (weak, nonatomic) IBOutlet UILabel *team2;
@property (weak, nonatomic) IBOutlet UILabel *no1;
@property (weak, nonatomic) IBOutlet UILabel *no2;
@property (weak, nonatomic) IBOutlet UIImageView *img1;

@property (weak, nonatomic) IBOutlet UIImageView *img2;

@property (weak, nonatomic) IBOutlet UIImageView *imgbot;
@property (weak, nonatomic) IBOutlet UIView *viewTop;

@property (retain, nonatomic) UITableViewController *parent;


@property (nonatomic, assign) id <CellTouchDelegate>  delegate;

@property (nonatomic, assign) id cellData;

@end
