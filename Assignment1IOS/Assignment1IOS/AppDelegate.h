//
//  AppDelegate.h
//  Assignment1IOS
//
//  Created by Sreeparna on 3/15/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

