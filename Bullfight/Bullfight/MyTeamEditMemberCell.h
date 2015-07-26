//
//  MyTeamEditMemberCell.h
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTeamEditMemberCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *btn1;

@property (weak, nonatomic) IBOutlet UILabel *txtPos;

@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (weak, nonatomic) IBOutlet UIImageView *img1;


-(void)setBtnTitle:(NSString*)title;


@end
