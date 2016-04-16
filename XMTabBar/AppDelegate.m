//
//  AppDelegate.m
//  XMTabBar
//
//  Created by 任长平 on 15/12/18.
//  Copyright © 2015年 任长平. All rights reserved.
//

#import "AppDelegate.h"

#import "XMOneViewController.h"
#import "XMTwoViewController.h"
#import "XMThreeViewController.h"
#import "XMFourViewController.h"
#import "XMTestViewController.h"

@interface AppDelegate ()
@property (nonatomic, strong) XMTestViewController * testVC;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    NSMutableArray * array = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"tab_buddy_nor.png"],
                                                                    [UIImage imageNamed:@"tab_me_nor.png"],
                                                                    [UIImage imageNamed:@"tab_qworld_nor.png"],
                                                                    [UIImage imageNamed:@"tab_recent_nor.png"], nil];
    
    NSMutableArray * selectedArray = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"tab_buddy_press.png"],
                                                                            [UIImage imageNamed:@"tab_me_press.png"],
                                                                            [UIImage imageNamed:@"tab_qworld_press.png"],
                                                                            [UIImage imageNamed:@"tab_recent_press.png"], nil];
    
    NSMutableArray * titles = [[NSMutableArray alloc]initWithObjects:@"首页",
                                                                     @"消息",
                                                                     @"发现",
                                                                     @"个人", nil];
    
    XMOneViewController * vc1 = [[XMOneViewController alloc]init];
    XMTwoViewController * vc2 = [[XMTwoViewController alloc]init];
    XMThreeViewController * vc3 = [[XMThreeViewController alloc]init];
    XMFourViewController * vc4 = [[XMFourViewController alloc]init];
    
    UINavigationController * nav2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    UINavigationController * nav3 = [[UINavigationController alloc]initWithRootViewController:vc3];

        
    self.tabBar = [[XMTabBarController alloc]initWithTabBarSelectedImages:selectedArray normalImages:array titles:titles];
    self.tabBar.viewControllers = @[vc1,nav2,nav3,vc4];
    /** 设置tabBar文字颜色*/
    self.tabBar.textColor = [UIColor redColor];
    /**  是否显示中间按钮 */
    self.tabBar.showCenterItem = YES;
    /**  设置中间按钮图片 */
    self.tabBar.centerItemImage = [UIImage imageNamed:@"btn_release.png"];
    self.tabBar.xm_centerViewController = [[XMTestViewController alloc] init];
    /**  添加badgeValue */
    [self.tabBar tabBarBadgeValue:345 item:2];
    self.window.rootViewController = self.tabBar;
    
    [self.window makeKeyAndVisible];
    return YES;
}






- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
