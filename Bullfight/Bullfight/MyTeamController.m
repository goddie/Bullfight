//
//  MyTeamController.m
//  Bullfight
//
//  Created by goddie on 15/7/22.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyTeamController.h"
#import "AddTeamController.h"

@interface MyTeamController ()

@end

@implementation MyTeamController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)addLeftNavButton
{
//    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [refreshButton setFrame:CGRectMake(0,0,26,30)];
//    refreshButton.userInteractionEnabled = YES;
//    [refreshButton setImage:[UIImage imageNamed:@"teamIcon.png"] forState:UIControlStateNormal];
//    
//    [GlobalUtil setMaskImageQuick:refreshButton withMask:@"shared_avatar_mask_medium.png" point:CGPointMake(26, 30)];
//    
//    // ASSIGNING THE BUTTON WITH IMAGE TO BACK BAR BUTTON
//    
//    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
//    
//    self.navigationItem.leftBarButtonItem = refreshBarButton;
//    
//    [refreshButton addTarget:self action:@selector(leftPush) forControlEvents:UIControlEventTouchUpInside];
}

-(void)addRightNavButton
{
    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [refreshButton setFrame:CGRectMake(0,0,26,30)];
    refreshButton.userInteractionEnabled = YES;
    [refreshButton setImage:[UIImage imageNamed:@"nav_btn_add.png"] forState:UIControlStateNormal];
    
    // ASSIGNING THE BUTTON WITH IMAGE TO BACK BAR BUTTON
    
    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
    
    self.navigationItem.rightBarButtonItem = refreshBarButton;
    
    [refreshButton addTarget:self action:@selector(rightPush) forControlEvents:UIControlEventTouchUpInside];
}



-(void)leftPush
{
 
}

-(void)rightPush
{
    
    
    QRootElement *root = [[AddTeamController alloc] create];
    AddTeamController *c3 = [[AddTeamController alloc] initWithRoot:root];
    
    [self.navigationController pushViewController:c3 animated:YES];
    
    
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
