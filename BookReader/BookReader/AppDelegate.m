//
//  AppDelegate.m
//  BookReader
//
//  Created by joe on 2017/5/17.
//  Copyright © 2017年 joe. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "BRMainTabBarController.h"

@interface AppDelegate () 

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /** 创建window */
    UIWindow *window = [[UIWindow alloc] initWithFrame:kMainScreenBounds];
    
    /** 设置window背景色 */
    window.backgroundColor = [UIColor whiteColor];
    
    /** 创建tabBarControoler */
    BRMainTabBarController *tabVc = [[BRMainTabBarController alloc] init];
    
    /** 设置window启动控制器 */
    window.rootViewController = tabVc;
    
    /** 显示window */
    [window makeKeyAndVisible];
    
    /** 给self.window指向 window */
    self.window = window;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [[UIScreen mainScreen] setBrightness:0.5];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
