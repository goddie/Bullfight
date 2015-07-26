//
//  MyManaTeamController.m
//  Bullfight
//  我管理的
//  Created by goddie on 15/7/22.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "MyManaTeamController.h"
#import "TeamCell.h"
#import "MyManaTeamRecord.h"

@interface MyManaTeamController ()

@end

@implementation MyManaTeamController

static NSString * const reuseIdentifier = @"TeamCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[TeamCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"TeamCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.backgroundColor = [GlobalConst appBgColor];
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
 
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 10;
}


////选择了某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyManaTeamRecord *c1 = [[MyManaTeamRecord alloc] initWithNibName:@"MyManaTeamRecord" bundle:nil];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:c1];
    
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TeamCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    return cell;
    
//    
//    static NSString *userMatchCell = @"TeamCell";
//    
//    
//    TeamCell *cell= [collectionView dequeueReusableCellWithReuseIdentifier:userMatchCell forIndexPath:indexPath];
//    if (!cell) {
//        [collectionView registerNib:[UINib nibWithNibName:userMatchCell bundle:nil]  forCellWithReuseIdentifier:userMatchCell];
//        //[collectionView registerNib:[UINib nibWithNibName:userMatchCell bundle:nil] forCellReuseIdentifier:userMatchCell];
//        cell = [collectionView dequeueReusableCellWithReuseIdentifier:userMatchCell forIndexPath:indexPath];
//    }
//    
//    return cell;

    
}
//定义每个UICollectionViewCell 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(95, 95);
}
//定义每个Section 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);//分别为上、左、下、右
}
////返回头headerView的大小
//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
//    CGSize size={320,45};
//    return size;
//}
////返回头footerView的大小
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
//{
//    CGSize size={320,45};
//    return size;
//}
////每个section中不同的行之间的行间距
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
//{
//    return 10;
//}
////每个item之间的间距
////- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
////{
////    return 100;
////}
////选择了某个cell
//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
//    [cell setBackgroundColor:[UIColor greenColor]];
//}
////取消选择了某个cell
//- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
//    [cell setBackgroundColor:[UIColor redColor]];
//}
@end
