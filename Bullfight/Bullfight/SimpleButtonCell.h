//
//  SimpleButtonCell.h
//  Bullfight
//
//  Created by goddie on 15/6/17.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleButtonCell : QTableViewCell
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnClick:(id)sender;

@end
