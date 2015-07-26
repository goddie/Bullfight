//
//  TeamRecordDataCell.h
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"

@interface TeamRecordMemberCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (weak, nonatomic) IBOutlet UILabel *txtHeight;
@property (weak, nonatomic) IBOutlet UILabel *txtWeight;
@property (weak, nonatomic) IBOutlet UILabel *txtPos;

@end
