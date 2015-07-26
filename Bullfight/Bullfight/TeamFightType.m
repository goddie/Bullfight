//
//  FightTypeController.m
//  Bullfight
//  约战模式
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightType.h"
#import "TeamFightTeam.h"

@interface TeamFightType ()

@end

@implementation TeamFightType

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [GlobalConst appBgColor];
    
    [GlobalUtil addTouchToView:self sender:[self.view viewWithTag:10] action:@selector(touchAction:)];
    [GlobalUtil addTouchToView:self sender:[self.view viewWithTag:20] action:@selector(touchAction:)];
    
    self.title = @"选择比赛类型";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchAction:(id)sender
{
    UITapGestureRecognizer *senderView =(UITapGestureRecognizer*)sender;
    
    if (senderView.view.tag == 10) {
      
        TeamFightTeam *c1 = [[TeamFightTeam alloc] initWithNibName:@"TeamFightTeam" bundle:nil];
        [self.navigationController pushViewController:c1 animated:YES];
        
    }
    
    if (senderView.view.tag == 20) {
        TeamFightTeam *c1 = [[TeamFightTeam alloc] initWithNibName:@"TeamFightTeam" bundle:nil];
        [self.navigationController pushViewController:c1 animated:YES];
    }
    
    
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
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}
@end
