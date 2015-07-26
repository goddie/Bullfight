//
//  TeamRecordHeaderController.h
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MidTabBar.h"

@interface TeamRecordHeader : UIViewController<MidTabTouchDelegate>
{
    NSArray *titleArray;
    NSArray *controllerArray;
    UIViewController *parentController;
    
}


-(void)setButtons:(NSArray*)titles vcs:(NSArray*)vcs activeIndex:(NSInteger)activeIndex;
-(void)initButton:(UIViewController*)parent activeIndex:(NSInteger)activeIndex;



@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (weak, nonatomic) IBOutlet UILabel *txtDate;
@property (weak, nonatomic) IBOutlet UILabel *txtInfo;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btn1Click:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *botView;



@end
