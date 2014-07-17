//
//  HumzaAppDelegate.m
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 08/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaAppDelegate.h"
#import "Player.h"
#import "PlayersViewController.h"

@implementation HumzaAppDelegate
{
    
    NSMutableArray *players;
    
    
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /* Woking Start From Here */
    
    players = [NSMutableArray arrayWithCapacity:20];
    Player *player = [Player new];
    // Or U can do like this
    //Player *player = [[Player alloc]init];
    player.name = @"Humza";
    player.game = @"Cricket";
    player.rating = 5;
    
    [players addObject:player];
    
    Player *player2 = [Player new];
    player2.name = @"Moiz";
    player2.game = @"Cricket";
    player2.rating = 5;
    
    [players addObject:player2];
   
    
    UITabBarController *ctrl = (UITabBarController * )self.window.rootViewController ;
    
    
    UINavigationController *navigationController =  [[ctrl viewControllers] objectAtIndex:0];
	
    PlayersViewController *playersViewController = [[navigationController viewControllers] objectAtIndex:0];
	
    //playersViewController.players = players;
    
    
    playersViewController.player = players;
    
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
