//
//  MessageCell.h
//  Bullfight
//
//  Created by goddie on 15/7/14.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface MessageCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (weak, nonatomic) IBOutlet UILabel *txtTime;
@property (weak, nonatomic) IBOutlet UILabel *txtContent;

 

@end
