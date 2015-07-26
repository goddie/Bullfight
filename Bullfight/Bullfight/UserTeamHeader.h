//
//  UserTeamController.h
//  Bullfight
//
//  Created by goddie on 15/7/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomeTableOne.h"

@interface UserTeamHeader : CustomeTableOne


@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (weak, nonatomic) IBOutlet UILabel *txtDate;
@property (weak, nonatomic) IBOutlet UILabel *txtInfo;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btn1Click:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *tabHolder;
@end
