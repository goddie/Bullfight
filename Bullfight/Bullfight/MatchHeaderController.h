//
//  MatchHeaderController.h
//  Bullfight
//
//  Created by goddie on 15/7/12.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MidTabBar.h"
@interface MatchHeaderController : UIViewController<MidTabTouchDelegate>

@property (weak, nonatomic) IBOutlet UIView *botView;

-(void)setButtons:(NSArray*)titles vcs:(NSArray*)vcs activeIndex:(NSInteger)activeIndex;

/**
 *  切换标签
 *
 *  @param parent      父级
 *  @param grand       爷爷级
 *  @param activeIndex <#activeIndex description#>
 */
-(void)initButton:(UIViewController*)parent activeIndex:(NSInteger)activeIndex;



@property (weak, nonatomic) IBOutlet UIImageView *img1;

@property (weak, nonatomic) IBOutlet UIImageView *img2;

@property (weak, nonatomic) IBOutlet UILabel *txt1;

@property (weak, nonatomic) IBOutlet UILabel *txtName1;
@property (weak, nonatomic) IBOutlet UILabel *txtName2;


@property (weak, nonatomic) IBOutlet UILabel *txtMember1;
@property (weak, nonatomic) IBOutlet UILabel *txtMember2;

@end
