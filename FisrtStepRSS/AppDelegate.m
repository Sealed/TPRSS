//
//  AppDelegate.m
//  FisrtStepRSS
//
//  Created by Admin on 20/10/2012.
//  Copyright (c) 2012 Vadim Glushko. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController2.h"
#import "FirstViewController.h"

@implementation AppDelegate 


- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
   
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:[[FirstViewController new]autorelease]];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackOpaque;
    navController.navigationBar.barStyle = UIBarStyleBlackOpaque;
    navController.toolbar.barStyle = UIBarStyleBlackOpaque;
    self.window.rootViewController = navController;
    [navController release];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    return YES;
}
@end
