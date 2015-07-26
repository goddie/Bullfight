//
//  LeaveCell.h
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeaveCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btn1Click:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *txtPos;

@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (weak, nonatomic) IBOutlet UIImageView *img1;


-(void)setBtnChecked:(BOOL)isChecked;
@end
