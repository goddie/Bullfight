//
//  LoginController.h
//  Bullfight
//
//  Created by goddie on 15/6/14.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btn1Click:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
- (IBAction)btn2Click:(id)sender;
@end
