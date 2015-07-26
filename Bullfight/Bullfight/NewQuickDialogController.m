//
//  NewQuickDialogController.m
//  Bullfight
//
//  Created by goddie on 15/6/19.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "NewQuickDialogController.h"


@implementation NewQuickDialogController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/**
 *  抽象方法
 *
 *  @return 子类实现
 */
- (QRootElement *)create
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}


@end
