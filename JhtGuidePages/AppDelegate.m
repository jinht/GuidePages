//
//  AppDelegate.m
//  JhtGuidePages
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 2016/11/28.
//  Copyright © 2016年 JhtGradientGuidePageVC. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "JhtGradientGuidePageVC.h"

@interface AppDelegate ()
/** 引导页VC */
@property (nonatomic, strong) JhtGradientGuidePageVC *introductionView;

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions  {
    // 创建引导页
    [self createGuideVC];
    
     return YES;
}

/** 创建引导页 */
- (void)createGuideVC {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *firstKey = [NSString stringWithFormat:@"isFirst%@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
    NSString *isFirst = [defaults objectForKey:firstKey];
    
    if (!isFirst.length) {
        NSArray *backgroundImageNames = @[@"ggps_1_bg", @"ggps_2_bg", @"ggps_3_bg", @"ggps_4_bg"];
        NSArray *coverImageNames = @[@"ggps_1_text", @"ggps_2_text", @"ggps_3_text", @"ggps_4_text"];
        
        // NO.1
//        self.introductionView = [[JhtGradientGuidePageVC alloc] initWithGuideImageNames:backgroundImageNames withLastRootViewController:[[ViewController alloc] init]];
        
        // NO.2
//        self.introductionView = [[JhtGradientGuidePageVC alloc] initWithCoverImageNames:coverImageNames withBackgroundImageNames:backgroundImageNames withLastRootViewController:[[ViewController alloc] init]];
        
        // NO.3
        // case 1
        UIButton *enterButton = [[UIButton alloc] init];
        [enterButton setTitle:@"点击进入" forState:UIControlStateNormal];
        [enterButton setBackgroundColor:[UIColor purpleColor]];
        enterButton.layer.cornerRadius = 8.0;
        // case 2
//        UIButton *enterButton = [[UIButton alloc] initWithFrame:CGRectMake((CGRectGetWidth([UIScreen mainScreen].bounds) - 100) / 2, CGRectGetHeight([UIScreen mainScreen].bounds) - 30 - 50, 100, 30)];
//        [enterButton setBackgroundImage:[UIImage imageNamed:@"enter_btn"] forState:UIControlStateNormal];
        
        self.introductionView = [[JhtGradientGuidePageVC alloc] initWithCoverImageNames:coverImageNames withBackgroundImageNames:backgroundImageNames withEnterButton:enterButton withLastRootViewController:[[ViewController alloc] init]];
        
        // 添加《跳过》按钮
        self.introductionView.isNeedSkipButton = YES;
        /******** 更多个性化配置见《JhtGradientGuidePageVC.h》 ********/
        
        self.window.rootViewController = self.introductionView;
        
        __weak AppDelegate *weakSelf = self;
        self.introductionView.didClickedEnter = ^() {
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            NSString *firstKey = [NSString stringWithFormat:@"isFirst%@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
            NSString *isFirst = [defaults objectForKey:firstKey];
            if (!isFirst) {
                [defaults setObject:@"notFirst" forKey:firstKey];
                [defaults synchronize];
            }
            
            weakSelf.introductionView = nil;
        };
    } else {
        self.window.rootViewController = [[ViewController alloc] init];
    }
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
