//
//  TeamFightDetailController.m
//  Bullfight
//  团队约战详细
//  Created by goddie on 15/6/30.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightDetailController.h"
#import "TeamFightHeader.h"
#import "TeamFightDetailCell.h"
#import "MidTabBar.h"
#import "MatchHeaderController.h"
#import "MatchDetailCell.h"


@interface TeamFightDetailController ()

@end

@implementation TeamFightDetailController
{
    NSMutableArray *data;
    NSMutableArray *iconData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    TeamFightHeader *teamFightHeader =  [[TeamFightHeader alloc] initWithNibName:@"TeamFightHeader" bundle:nil];
//    
//    self.tableView.tableHeaderView = teamFightHeader.view;

//    self.tableView.tableFooterView = matchInfoController.view;

    self.view.backgroundColor = [GlobalConst appBgColor];
    //self.tableView.backgroundColor = [GlobalConst appBgColor];
    
    self.tableView.backgroundColor = [GlobalConst lightAppBgColor];

    data = [NSMutableArray arrayWithObjects:
            @"东单体育中心18号场地",
            @"12月28日 14:00－15:30",
            @"晴转多云",
            @"裁判员一名，数据员两名",
            @"接受系统赛前通知提醒",nil];
    
    
    iconData =[ NSMutableArray arrayWithObjects:
               @"shared_icon_location.png",
               @"shared_icon_notification.png",
               @"shared_icon_weather.png",
               @"shared_icon_jurge.png",
               @"shared_icon_notification.png", nil];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self getHeader:1 index:0];
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 170.0f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MatchDetailCell";
    MatchDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.txt1.text = [data objectAtIndex:indexPath.row];
    
    cell.img1.image = [UIImage imageNamed:[iconData objectAtIndex:indexPath.row]];
    
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0f;
}



@end
