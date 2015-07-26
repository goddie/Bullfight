//
//  UILabel+dynamicSizeMe.m
//  Bullfight
//
//  Created by goddie on 15/7/14.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UILabel+dynamicSizeMe.h"

@implementation UILabel (dynamicSizeMe)

-(float)resizeToFit:(float)fontSize
{
    float height = [self expectedHeight:fontSize];
    CGRect newFrame = [self frame];
    newFrame.size.height = height;

    [self setFrame:newFrame];
    
    return newFrame.origin.y + newFrame.size.height;
}

-(float)expectedHeight:(float)fontSize
{
    [self setNumberOfLines:0];
    [self setLineBreakMode:NSLineBreakByCharWrapping];
    
    UIFont *font = [UIFont systemFontOfSize:fontSize]; //Warning! It's an example, set the font, you need
    
    NSDictionary *attributesDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                          font, NSFontAttributeName,
                                          nil];
    
    CGSize maximumLabelSize = CGSizeMake(self.frame.size.width,MAXFLOAT);
    
    CGRect expectedLabelRect = [[self text] boundingRectWithSize:maximumLabelSize
                                                         options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading)
                                                      attributes:attributesDictionary
                                                         context:nil];
    CGSize *expectedLabelSize = &expectedLabelRect.size;
    
    return expectedLabelSize->height;}

@end