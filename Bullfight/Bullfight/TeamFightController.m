//
//  TeamFightController.m
//  Bullfight
//  团队约战
//  Created by goddie on 15/6/25.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamFightController.h"
#import "MatchBeginCell.h"
#import "MatchEndCell.h"
#import "MatchWaitCell.h"
#import "TeamFightDetailController.h"
#import "ShapedImageView.h"
#import "MatchWildBeginCell.h"
#import "TeamRecord.h"

 
@interface TeamFightController ()

@end

@implementation TeamFightController
{
    NSArray *typeData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.view.backgroundColor = [GlobalConst appBgColor];
    self.tableView.backgroundColor = [GlobalConst appBgColor];
    
    typeData = @[ @1,@4,@2,@3,@2,@2,@1];
    
    self.tableView.delaysContentTouches = NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)pushTeamController:(id)sender
{
    
    //UIButton *btn = (UIButton*)sender;
    //NSLog(@"pushTeamController %li",(long)btn.tag);
    TeamRecord *c1 = [[TeamRecord alloc] initWithNibName:@"TeamRecord" bundle:nil];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:c1];
    
    [self presentViewController:nav animated:YES completion:^{
        
    }];
    
    
}

#pragma mark - Table view data source



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return typeData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger type = [[typeData objectAtIndex:indexPath.row] integerValue];
    
    if (type==1) {
        static NSString *CellIdentifier = @"MatchBeginCell";
        MatchBeginCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil){
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        //cell.team1.tag = 199;
        
        
        
        [GlobalUtil addButtonToView:self sender:cell.img1 action:@selector(pushTeamController:) data:123];
        
        
        return  cell;
    }
    
    if (type==2) {
        static NSString *CellIdentifier = @"MatchEndCell";
        MatchEndCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil){
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        return  cell;
    }
    
    
    if (type==3) {
        static NSString *CellIdentifier = @"MatchWaitCell";
        MatchWaitCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil){
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        return  cell;
    }
    
    if (type==4) {
        static NSString *CellIdentifier = @"MatchWildBeginCell";
        MatchWildBeginCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil){
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        return  cell;
    }
    
    static NSString *CellIdentifier = @"MatchBeginCell";
    MatchBeginCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    //cell.img1.image = [GlobalUtil getMaskImage:@"teamIcon.png" mask:@"shared_avatar_mask_small.png" ];
    
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    return 190.0f;
}

#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    
    TeamFightDetailController *controller = [[TeamFightDetailController alloc] initWithNibName:@"TeamFightDetailController" bundle:nil];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
 
    
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
