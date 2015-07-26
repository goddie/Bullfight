//
//  MidTabBar.m
//  Bullfight
//
//  Created by goddie on 15/6/28.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MidTabBar.h"

@implementation MidTabBar
{
    NSMutableArray *btnArray;
    NSMutableArray *titleArray;
    CGFloat width;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
// - (void)drawRect:(CGRect)rect {
////     self.backgroundColor = UICOlor
////    self.layer.backgroundColor = [self.backgroundColor CGColor];
// }


//super override
- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        btnArray = [[NSMutableArray alloc] initWithCapacity:10];
        titleArray = [[NSMutableArray alloc] initWithCapacity:10];
        
        self.backgroundColor = [GlobalConst appBgColor];
        
        UIImage *tabbg=[UIImage imageNamed:@"tabBarBg.png"];
        self.backgroundColor =[UIColor colorWithPatternImage:tabbg];
        
        
        //        UILabel *bot = [[UILabel alloc] initWithFrame:CGRectMake(0, 36, self.bounds.size.width, 1)];
        //        //        bot.backgroundColor = [GlobalConst bottomLineColor];
        //
        //        bot.backgroundColor = [UIColor redColor];
        //
        //        [self addSubview:bot];
    }
    return self;
}

-(void)setButtons:(NSArray *)titles activeIndex:(NSInteger)activeIndex;
{
    titleArray = [NSMutableArray arrayWithArray:titles];
    
    width = [UIScreen mainScreen].bounds.size.width / (float)titles.count;
    
    for (int i=0; i<titles.count; i++) {
        
        float x = width * i;
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(x, 0, width, 36)];
        [self addSubview:btn];
        
        [btn setTitle:[titles objectAtIndex:i] forState:UIControlStateNormal];
        [btn setTitleColor:[GlobalConst tabNormalColor] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:12.0f];
        
        [btn addTarget:self action:@selector(tabTouch:) forControlEvents:UIControlEventTouchUpInside];
        
        if (i==0) {
            
            [GlobalUtil set9PathImage:btn imageName:@"shared_tab_left.png" top:6.0f right:20.0f];
            
        }else if (i==(titles.count-1)) {
            
            [GlobalUtil set9PathImage:btn imageName:@"shared_tab_right.png" top:6.0f right:20.0f];
            
        }else
        {
            [GlobalUtil set9PathImage:btn imageName:@"tab_center.png" top:6.0f right:20.0f];
        }
        
        
        
        for (UIView *sub in btn.subviews) {
            if( [sub isKindOfClass:[UIImageView class]] ){
                [sub setHidden:YES];
            }
        }
        
        [btnArray addObject:btn];
        

    }
    
    [self setActive:activeIndex];

    
}


-(void)tabTouch:(id)sender
{
    UIButton *b = (UIButton*)sender;
    
    NSInteger index = [btnArray indexOfObject:b];
    
    [_delegate tabChanged:index];
    
    [self setActive:index];
}


-(void)setActive:(NSInteger)index
{
    
    for (UIButton *b in [btnArray objectEnumerator]) {
        
        for (UIView *sub in b.subviews) {
            if ([sub isKindOfClass:[UIImageView class]]) {
                
                [sub setHidden:YES];
            }
            
        }
        
        [b setTitleColor:[GlobalConst tabNormalColor] forState:UIControlStateNormal];
        
    }
    
    
    UIButton *b = [btnArray objectAtIndex:index];
    
    for (UIView *sub in b.subviews) {
        if ([sub isKindOfClass:[UIImageView class]]) {
            [sub setHidden:NO];
        }
    }
    
    
    [b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
}

@end
