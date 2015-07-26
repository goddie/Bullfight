//
//  TopTabBar.m
//  Bullfight
//
//  Created by goddie on 15/7/12.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TopTabBar.h"

@implementation TopTabBar
{
    NSMutableArray *btnArray;
    NSMutableArray *titleArray;
    CGFloat width;
    NSInteger curIndex;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        btnArray  = [[NSMutableArray alloc] initWithCapacity:10];
        titleArray = [[NSMutableArray alloc] initWithCapacity:10];
    }

    return self;
}


-(void)setButtons:(NSArray *)titles activeIndex:(NSInteger)activeIndex
{
    float w = 85.0f * titles.count + 10.0f;
    //外框
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(0, 0, w, 37.0f)];
    [GlobalUtil set9PathImage:square imageName:@"shared_segmented_control_bg.png" top:2 right:20];
    [self addSubview:square];
    
//    
//    [square addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view(37)]" options:0 metrics:nil views:@{@"view":square}]];
//    [square addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:[view(%f)]",w] options:0 metrics:nil views:@{@"view":square}]];
    
    //按钮
    for (int i=0; i<titles.count; i++) {
        
        float x = 85.0f * i + 5.0f;
        
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(x, 4, 85.0f, 29.0f)];
        [btn setTitle:[titles objectAtIndex:i] forState:UIControlStateNormal];
        [btn setTitleColor:[GlobalConst tabNormalColor] forState:UIControlStateNormal];
        [btn.titleLabel setFont: [UIFont systemFontOfSize:14.0f]];
        
        [GlobalUtil set9PathImage:btn imageName:@"shared_segmented_control_selected.png" top:2 right:20];
        
        for (UIView *sub in btn.subviews) {
            if ([sub isKindOfClass:[UIImageView class]]) {
                [sub setHidden:YES];
            }
        }

        
//        btn.backgroundColor = [UIColor redColor];
        
        [square addSubview:btn];
        
        
        [btn addTarget:self action:@selector(tabTouched:) forControlEvents:UIControlEventTouchUpInside];
//        btn.translatesAutoresizingMaskIntoConstraints = NO;
        
        [btnArray addObject:btn];
    }
    
    [self setActive:activeIndex];
    
 
}


-(void)tabTouched:(id)sender;
{
    UIButton *b = (UIButton*)sender;
    
    NSInteger index = [btnArray indexOfObject:b];
    
    [_delegate tabChanged:index];
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



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
