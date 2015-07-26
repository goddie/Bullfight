//
//  AddPlaceController.h
//  Bullfight
//
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddPlaceController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *mapView;

@end
