//
//  HumzaAppDelegate.m
//  Table_View_2
//
//  Created by kashif Saeed on 17/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaAppDelegate.h"
#import "HumzaMasterViewController.h"
#import "RWTScaryBugDoc.h"


@implementation HumzaAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    RWTScaryBugDoc *bug1 = [[RWTScaryBugDoc alloc] initWithTitle:@"Potato Bug" rating:1 tImg:[UIImage imageNamed:@"potatoBugThumb"] fImg:[UIImage imageNamed:@"potatoBug"]];
    
    RWTScaryBugDoc *bug2 = [[RWTScaryBugDoc alloc] initWithTitle:@"House Centipede" rating:3 tImg:[UIImage imageNamed:@"centipedeThumb.jpg"] fImg:[UIImage imageNamed:@"centipede.jpg"]];
    
    RWTScaryBugDoc *bug3 = [[RWTScaryBugDoc alloc]initWithTitle:@"Lady Bug" rating:2 tImg:[UIImage imageNamed:@"ladybugThumb.jpg"] fImg:[UIImage imageNamed:@"ladybug.jpg"]];
    
    RWTScaryBugDoc *bug4 = [[RWTScaryBugDoc alloc]initWithTitle:@"Wolf Spider" rating:4 tImg:[UIImage imageNamed:@"wolfSpiderThumb.jpg"] fImg:[UIImage imageNamed:@"wolfSpider.jpg"]];
    
    
   NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1,bug2,bug3,bug4 ,nil];
//    
//    UINavigationController *navi = (UINavigationController *)self.window.rootViewController;
//    
//    HumzaMasterViewController  *view = [navi.viewControllers objectAtIndex:0];
//    view.bugs = bugs;

    
    UINavigationController *navController = (UINavigationController *) self.window.rootViewController;
    HumzaMasterViewController *masterController = [navController.viewControllers objectAtIndex:0];
    masterController.bugs = bugs;
    
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
