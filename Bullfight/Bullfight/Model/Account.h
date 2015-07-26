//
//  Account.h
//  Bullfight
//
//  Created by goddie on 15/6/19.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import "MTLJSONAdapter.h"


@interface Account :  MTLModel<MTLJSONSerializing>
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@end
