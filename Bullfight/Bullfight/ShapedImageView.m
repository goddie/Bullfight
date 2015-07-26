//
//  ShapedImageView.m
//  Bullfight
//
//  Created by goddie on 15/7/11.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "ShapedImageView.h"

@implementation ShapedImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    _maskLayer = [CAShapeLayer layer];
    _maskLayer.path = [UIBezierPath bezierPathWithOvalInRect:self.bounds].CGPath;
    _maskLayer.fillColor = [UIColor blackColor].CGColor;
    _maskLayer.strokeColor = [UIColor redColor].CGColor;
    _maskLayer.frame = self.bounds;
    _maskLayer.contentsCenter = CGRectMake(0.5, 0.5, 0.1, 0.1);
    _maskLayer.contentsScale = [UIScreen mainScreen].scale;
    
    _contentLayer = [CALayer layer];
    _contentLayer.mask = _maskLayer;
    _contentLayer.frame = self.bounds;
    [self.layer addSublayer:_contentLayer];
    
}

- (void)setImage:(UIImage *)image
{
    _contentLayer.contents = (id)image.CGImage;
}

@end
