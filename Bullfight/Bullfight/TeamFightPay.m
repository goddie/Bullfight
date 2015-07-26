//
//  PayListController.m
//  Bullfight
//  支付场地费用
//  Created by goddie on 15/7/20.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightPay.h"
#import "PayListCell.h"
#import "PayListTotalCell.h"
#import "PayListCodeCell.h"

@interface TeamFightPay ()

@end

@implementation TeamFightPay
{
    NSArray *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"支付场地费";
    data = @[@"3VS3比赛场地费用",@"3VS3比赛裁判费用",@"3VS3比赛数据员费用"];
    //self.tableView.tableFooterView = [self getBottomView];
    
    self.tableView.backgroundColor  =[GlobalConst appBgColor];
    self.view.backgroundColor = [GlobalConst appBgColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIView*)getBottomView
{
    float w = self.view.frame.size.width;
    UIView *parent = [[UIView alloc] initWithFrame:CGRectMake(0, 0, w, 80)];
    
    parent.backgroundColor = [GlobalConst appBgColor];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake((w-80)*0.5f, 10, 80, 30)];
    [btn1 setTitle:@"微信支付" forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont systemFontOfSize:13.0f];
    [GlobalUtil set9PathImage:btn1 imageName:@"activities_btn.png" top:2 right:10];
    [parent addSubview:btn1];
    
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake((w-80)*0.5f, btn1.frame.origin.y+10 + 30, 80, 30)];
    [btn2 setTitle:@"支付宝支付" forState:UIControlStateNormal];
    btn2.titleLabel.font = [UIFont systemFontOfSize:13.0f];
    [GlobalUtil set9PathImage:btn2 imageName:@"activities_btn.png" top:2 right:10];
    [parent addSubview:btn2];
    
    [btn2 addTarget:self action:@selector(btn2Click) forControlEvents:UIControlEventTouchUpInside];
    
    return  parent;

}

-(void)btn1Click
{
    
}

-(void)btn2Click
{
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return data.count+2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row==4) {
        static NSString *CellIdentifier = @"PayListCodeCell";
        PayListCodeCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil){
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        return cell;
    }
    
    if (indexPath.row==3) {
        static NSString *CellIdentifier = @"PayListTotalCell";
        PayListTotalCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil){
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        return cell;
    }
    
    static NSString *CellIdentifier = @"PayListCell";
    PayListCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 3) {
        return  80.0f;
    }
    return 54.0f;
}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return  100.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [self getBottomView];
}

@end
