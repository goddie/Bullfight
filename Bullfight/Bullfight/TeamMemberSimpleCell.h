//
//  TeamMemberSimpleCell.h
//  Bullfight
//
//  Created by goddie on 15/7/13.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface TeamMemberSimpleCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UILabel *name1;
@property (weak, nonatomic) IBOutlet UILabel *name2;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end
