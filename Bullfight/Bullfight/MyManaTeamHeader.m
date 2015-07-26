//
//  MyManaTeamHeader.m
//  Bullfight
//  管理球队
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyManaTeamHeader.h"
#import "MyManaTeamRecord.h"
#import "MyManaTeamMember.h"
#import "MyManaTeamData.h"
#import "MyManaTeamHonor.h"

#import "MyTeamEditTop.h"

#import "MyTeamEdit.h"
#import "MyTeamEditMember.h"
#import "AppDelegate.h"

@interface MyManaTeamHeader ()

@end

@implementation MyManaTeamHeader

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btn1Click:(id)sender {
    
    
    
    
    MyTeamEditTop *c1= [[MyTeamEditTop alloc] initWithNibName:@"MyTeamEditTop" bundle:nil];
    c1.title = @"球队管理";
    
    QRootElement *root = [[MyTeamEdit alloc] create];
    MyTeamEdit *c2 = [[MyTeamEdit alloc] initWithRoot:root];
    
    MyTeamEditMember *c3 = [[MyTeamEditMember alloc] initWithNibName:@"MyTeamEditMember" bundle:nil];
    
    [c1 setButtons:@[@"球队资料",@"队员管理"] vcs:@[c2,c3] activeIndex:0];
        
    UIApplication* app=[UIApplication sharedApplication];
    AppDelegate *appDelegate=(AppDelegate *)app.delegate;
    
    UINavigationController *nav  = [[UINavigationController alloc] initWithRootViewController:c1];
    
    [appDelegate.activeController dismissViewControllerAnimated:NO completion:^{
        
        [appDelegate.activeController presentViewController:nav animated:YES completion:nil];
        
    }];
    
//    NSLog(@"1");
//    
//    
//    
//    [self dismissViewControllerAnimated:NO completion:^{
//        MyTeamEdit *c1 = [[MyTeamEdit alloc] initWithNibName:@"MyTeamEdit" bundle:nil];
//        [self presentViewController:c1 animated:YES completion:nil];
//    }];
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
    [self.navigationController popViewControllerAnimated:YES];
    
//    [[self parentViewController].navigationController pushViewController:c1 animated:YES];
//    [self.navigationController pushViewController:c1 animated:YES];
    
}


-(void)initButton:(UIViewController*)parent activeIndex:(NSInteger)activeIndex
{
    
    MyManaTeamRecord *c1 = [[MyManaTeamRecord alloc] initWithNibName:@"MyManaTeamRecord" bundle:nil];
    MyManaTeamMember *c2 = [[MyManaTeamMember alloc] initWithNibName:@"MyManaTeamMember" bundle:nil];
    MyManaTeamData *c3 = [[MyManaTeamData alloc] initWithNibName:@"MyManaTeamData" bundle:nil];
    MyManaTeamHonor *c4 = [[MyManaTeamHonor alloc] initWithNibName:@"MyManaTeamHonor" bundle:nil];
    
    titleArray = @[@"球队战绩",@"球队阵容",@"球队数据",@"获得荣誉"];
    controllerArray = @[c1,c2,c3,c4];
    parentController = parent;
    
    [self setButtons:titleArray vcs:controllerArray activeIndex:activeIndex];
    
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
