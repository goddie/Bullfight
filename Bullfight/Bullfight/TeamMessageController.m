//
//  TeamMessageController.m
//  Bullfight
//  赛前动员
//  Created by goddie on 15/7/12.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "TeamMessageController.h"
#import "MatchHeaderController.h"
#import "MessageCell.h"
#import "UILabel+dynamicSizeMe.h"

@interface TeamMessageController ()

@end

@implementation TeamMessageController
{
    NSArray *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.tableView.backgroundColor = [GlobalConst lightAppBgColor];
    
    data = [NSArray arrayWithObjects:@"我参加了比赛",@"我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛",@"我参加了比赛",@"我参加了比赛",@"我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛",@"我参加了比赛",@"我参加了比赛",@"我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛我参加了比赛",@"我参加了比赛", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 170.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self getHeader:1 index:3];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MessageCell";
    MessageCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.txtContent.text = [data objectAtIndex:indexPath.row];
    
    [cell.txtContent resizeToFit:10.0f];
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    MessageCell *cell = (MessageCell*)[tableView cellForRowAtIndexPath:indexPath];
//    float height = [cell.txtContent resizeToFit:10.0f];
//    return height + 20.0f;
    
//    //return 67.0f;

    NSInteger row = indexPath.row;
    // 列寬
    CGFloat contentWidth = 266.0f;
    // 用何種字體進行顯示
    UIFont *font = [UIFont systemFontOfSize:10];
    // 該行要顯示的內容
    NSString *content = [data objectAtIndex:row];
    
    NSDictionary *attributes = @{NSFontAttributeName: font};
    // NSString class method: boundingRectWithSize:options:attributes:context is
    // available only on ios7.0 sdk.
    CGRect rect = [content boundingRectWithSize:CGSizeMake(contentWidth, MAXFLOAT)
                                              options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading)
                                           attributes:attributes
                                              context:nil];

    // 這裏返回需要的高度
    return rect.size.height+60;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
