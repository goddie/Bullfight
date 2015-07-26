//
//  UITableView+HeaderView.m
//  Bullfight
//
//  Created by goddie on 15/7/26.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import "UITableView+HeaderView.h"

@implementation UITableView (HeaderView)

- (void) sizeHeaderToFit {
    
 
    
    UIView *headerView = self.tableHeaderView;
    
    [headerView setNeedsLayout];
    [headerView layoutIfNeeded];
    CGFloat height = [headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    
    headerView.frame = ({
        CGRect headerFrame = headerView.frame;
        headerFrame.size.height = height;
        headerFrame;
    });
    
    self.tableHeaderView = headerView;
 
}

//
//- (void)sizeHeaderToFit
//{
//    [self beginUpdates];
////    [self setEditing:YES animated:YES];
//    
//    UIView *headerView = self.tableHeaderView;
//    self.tableHeaderView = nil;
//    
//    UIView *header = headerView;
//    CGRect frame = header.frame;
//    frame.size.width = self.frame.size.width;
//    header.frame = frame;
//    
//    [header setNeedsLayout];
//    [header layoutIfNeeded];
//    
//    CGFloat height = [header systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
//    
//    CGRect headerFrame = header.frame;
//    headerFrame.size.height = height;
//    
//    header.frame = headerFrame;
//    
//    self.tableHeaderView = header;
//    
//    [self endUpdates];
//}

@end