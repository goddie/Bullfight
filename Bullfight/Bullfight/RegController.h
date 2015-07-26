//
//  RegController.h
//  Bullfight
//
//  Created by goddie on 15/6/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnClick:(id)sender;

+ (QRootElement *)create;

@end
