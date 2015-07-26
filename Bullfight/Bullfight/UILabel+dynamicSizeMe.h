//
//  UILabel+dynamicSizeMe.h
//  Bullfight
//
//  Created by goddie on 15/7/14.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UILabel (dynamicSizeMe)

-(float)resizeToFit:(float)fontSize;
-(float)expectedHeight:(float)fontSize;

@end
