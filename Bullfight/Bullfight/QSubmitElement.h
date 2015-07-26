//
//  QSubmitElement.h
//  Bullfight
//
//  Created by goddie on 15/6/17.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "QLabelElement.h"

@interface QSubmitElement : QElement
{
    NSString *_title;
}


- (QSubmitElement *)initWithTitle:(NSString *)string Value:(id)value;

@end
