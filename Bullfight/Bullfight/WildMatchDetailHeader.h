//
//  WildMatchDetailHeaderController.h
//  Bullfight
//
//  Created by goddie on 15/7/15.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MidTabBar.h"

@interface WildMatchDetailHeader : UIViewController<MidTabTouchDelegate>
@property (weak, nonatomic) IBOutlet UIView *botView;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btn1Click:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
- (IBAction)btn2Click:(id)sender;

-(void)setButtons:(NSArray*)titles vcs:(NSArray*)vcs activeIndex:(NSInteger)activeIndex;

-(void)initButton:(UIViewController*)parent activeIndex:(NSInteger)activeIndex;

@end
