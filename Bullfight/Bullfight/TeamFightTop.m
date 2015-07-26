//
//  TeamFightTop.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightTop.h"
#import "TeamFightType.h"

@interface TeamFightTop ()

@end

@implementation TeamFightTop

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)btnAddClick:(id)sender {
    
    TeamFightType *c1=  [[TeamFightType alloc] initWithNibName:@"TeamFightType" bundle:nil];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:c1];
    
    [self presentViewController:nav animated:YES completion:^{
        
    }];
    
//    [self.navigationController pushViewController:c1 animated:YES];
    
}
@end
