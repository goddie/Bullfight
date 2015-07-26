//
//  MatchListController.m
//  Bullfight
//  比赛过滤
//  Created by goddie on 15/7/21.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MatchListController.h"
#import "MatchBeginCell.h"
#import "NoticeController.h"

@interface MatchListController ()

@end

@implementation MatchListController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title = @"全部比赛";
    
    self.view.backgroundColor = [GlobalConst appBgColor];
    
    [self addLeftNavButton];
    [self addRightNavButton];
    [self addMidButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)addMidButton
{
    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [refreshButton setFrame:CGRectMake(0,0,80,30)];
    refreshButton.userInteractionEnabled = YES;
//    refreshButton.backgroundColor = [UIColor redColor];
    [refreshButton setTitle:@"全部比赛" forState:UIControlStateNormal];
//    [refreshButton setImage:[UIImage imageNamed:@"shared_icon_dropdown_arrow.png"] forState:UIControlStateNormal];
    
//    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
//    
//    self.navigationItem.leftBarButtonItem = refreshBarButton;
    
    [refreshButton addTarget:self action:@selector(midPush) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIImageView *iv  = [[UIImageView alloc] initWithFrame:CGRectMake(80, 11, 7, 4)];
    iv.image = [UIImage imageNamed:@"shared_icon_dropdown_arrow.png"];
    
    [refreshButton addSubview:iv];
    
    self.navigationItem.titleView = refreshButton;
}

-(void)addLeftNavButton
{
    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [refreshButton setFrame:CGRectMake(0,0,26,30)];
    refreshButton.userInteractionEnabled = YES;
    [refreshButton setImage:[UIImage imageNamed:@"nav_btn_cancel.png"] forState:UIControlStateNormal];
    
    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
    
    self.navigationItem.leftBarButtonItem = refreshBarButton;
    
    [refreshButton addTarget:self action:@selector(leftPush) forControlEvents:UIControlEventTouchUpInside];
}

-(void)addRightNavButton
{
    UIButton *refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [refreshButton setFrame:CGRectMake(0,0,26,30)];
    refreshButton.userInteractionEnabled = YES;
    [refreshButton setImage:[UIImage imageNamed:@"match_notication_icon_misc.png"] forState:UIControlStateNormal];
    
    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];
    
    self.navigationItem.rightBarButtonItem = refreshBarButton;
    
    [refreshButton addTarget:self action:@selector(rightPush) forControlEvents:UIControlEventTouchUpInside];
}



-(void)leftPush
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

-(void)rightPush
{
    NoticeController *c = [[NoticeController alloc] initWithNibName:@"NoticeController" bundle:nil];
    [self.navigationController pushViewController:c animated:YES];
}

-(void)midPush
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:nil
                                  delegate:self
                                  cancelButtonTitle:@"取消"
                                  destructiveButtonTitle:@"全部比赛"
                                  otherButtonTitles:@"待应战", @"未开始",@"已结束",nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MatchBeginCell";
    MatchBeginCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 190.0f;
}

@end
