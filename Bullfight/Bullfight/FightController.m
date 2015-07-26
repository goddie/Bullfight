//
//  FightController.m
//  Bullfight
//  比赛 弃用
//  Created by goddie on 15/6/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "FightController.h"
#import "TeamFightController.h"
#import "WildFightController.h"
@interface FightController ()

@end

@implementation FightController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    TeamFightController *controller1 = [[TeamFightController alloc] initWithNibName:@"TeamFightController" bundle:nil];
    WildFightController *controller2 = [[WildFightController alloc] initWithNibName:@"WildFightController" bundle:nil];

    [self initTitlesAndControllers:@[@"团队约战",@"野球娱乐"] controllers:@[controller1,controller2]];
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

@end
