//
//  AppDelegate.h
//  Bullfight
//
//  Created by goddie on 15/6/14.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) UINavigationController *activeController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

