//
//  JudgeAndDataController.h
//  Bullfight
//
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeamFightJudge : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btn1Click:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btn2;

- (IBAction)btn2Click:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btn3;
- (IBAction)btn3Click:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btn21;
- (IBAction)btn21Click:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btn22;
- (IBAction)btn22Click:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btn23;

- (IBAction)btn23Click:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btnNext;
- (IBAction)btnNextClick:(id)sender;

@end
