//
//  AppDelegate.m
//  JhtGuidePages
//
//  Created by Jht on 2016/11/28.
//  Copyright © 2016年 Jht. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "JhtGradientGuidePageVC.h"

@interface AppDelegate ()

/** 引导页VC */
@property (nonatomic, strong) JhtGradientGuidePageVC *introductionView;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *backgroundImageNames = @[@"ggps_1_bg", @"ggps_2_bg", @"ggps_3_bg", @"ggps_4_bg"];
    NSArray *coverImageNames = @[@"ggps_1_text", @"ggps_2_text", @"ggps_3_text", @"ggps_4_text"];
    
    // Example 1
//    self.introductionView = [[JhtGradientGuidePageVC alloc] initWithCoverImageNames:backgroundImageNames];
    
    // Example 2
//    self.introductionView = [[JhtGradientGuidePageVC alloc] initWithCoverImageNames:coverImageNames withBackgroundImageNames:backgroundImageNames];
    
    // Example 3
    UIButton *enterButton = [[UIButton alloc] init];
    // case 1
//    [enterButton setTitle:@"点击进入" forState:UIControlStateNormal];
//    [enterButton setTitleColor:[UIColor colorWithRed:0.92f green:0.43f blue:0.71f alpha:1.00f] forState:UIControlStateNormal];
    // case 2
    [enterButton setBackgroundImage:[UIImage imageNamed:@"enter_btn"] forState:UIControlStateNormal];
    self.introductionView = [[JhtGradientGuidePageVC alloc] initWithCoverImageNames:coverImageNames withBackgroundImageNames:backgroundImageNames withEnterButton:enterButton];
    
    // 添加《跳过》按钮
    self.introductionView.isNeedSkipButton = YES;
    
    self.window.rootViewController = self.introductionView;
    
    __weak AppDelegate *weakSelf = self;
    self.introductionView.didClickedEnter = ^() {
        weakSelf.window.rootViewController = [[ViewController alloc] init];
    };
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
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
