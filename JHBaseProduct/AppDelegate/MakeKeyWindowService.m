//
//  MakeKeyWindowService.m
//  BasicProjecFrame
//
//  Created by Jivan on 2018/12/1.
//  Copyright © 2018 Jivan. All rights reserved.
//

#import "MakeKeyWindowService.h"
#import "BaseTabBarController.h"

@implementation MakeKeyWindowService

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIWindow *window = [UIApplication sharedApplication].delegate.window ;
    window.frame =  UIScreen.mainScreen.bounds;
    window.backgroundColor = [UIColor whiteColor];
    BaseTabBarController * baseTab = [[BaseTabBarController alloc]init];
    window.rootViewController = baseTab;
    [window makeKeyAndVisible];
    return YES;
}

@end
