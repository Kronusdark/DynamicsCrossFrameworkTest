//
//  TTAppDelegate.m
//  DynamicsTest
//
//  Created by Weston Hanners on 3/29/14.
//  Copyright (c) 2014 Hanners Software. All rights reserved.
//

#import "TTAppDelegate.h"
#import "TTTestViewController.h"

@implementation TTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
  TTTestViewController *viewController = [TTTestViewController new];
  
  [self.window setRootViewController:viewController];
  
  
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}




@end
