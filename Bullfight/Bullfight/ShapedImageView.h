//
//  ShapedImageView.h
//  Bullfight
//
//  Created by goddie on 15/7/11.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShapedImageView : UIView
{
    CALayer      *_contentLayer;
    CAShapeLayer *_maskLayer;
}
@end
