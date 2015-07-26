//
//  GateController.h
//  Bullfight
//
//  Created by goddie on 15/6/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GateController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
- (IBAction)btn1Click:(id)sender;
- (IBAction)btn2Click:(id)sender;

@end
