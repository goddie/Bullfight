//
//  TimeAndPlace.m
//  Bullfight
//  时间和场地
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightTime.h"
#import "TeamFightJudge.h"
#import "TeamFightPlaceList.h"

@interface TeamFightTime ()

@end

@implementation TeamFightTime

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [GlobalUtil set9PathImage:self.btn1 imageName:@"activities_btn.png" top:2 right:10];
    self.title = @"时间和场地";
    
    self.view.backgroundColor= [GlobalConst appBgColor];
    
    
    
    [GlobalUtil addTouchToView:self sender:self.txtPlace action:@selector(changePlace:)];

    
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)changePlace:(UIGestureRecognizer*)sender
{
    TeamFightPlaceList *c1  = [[TeamFightPlaceList alloc] initWithNibName:@"TeamFightPlaceList" bundle:nil];
    [self.navigationController pushViewController:c1 animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btn1Click:(id)sender {
    
    TeamFightJudge *c1= [[TeamFightJudge alloc] initWithNibName:@"TeamFightJudge" bundle:nil];
    [self.navigationController pushViewController:c1 animated:YES];
    
}
@end
