//
//  PHAppDelegate.m
//  Phim Hub
//
//  Created by Tung Pham Gia on 10/22/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import "PHAppDelegate.h"
#import "PHFilm.h"

@implementation PHAppDelegate
@synthesize arrNewestFilms;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.arrNewestFilms = [[NSMutableArray alloc] init];

    PHFilm *film1 = [[PHFilm alloc] init];
    [film1 setStrFilmName:@"Người Nhện 4: Siêu Nhện Tái Xuất - The Amazing Spider Man - 2012"];
    [film1 setStrFilmType:@"Phiêu Lưu - Hành Động, Viễn Tưởng"];
    [film1 setStrPosterImageURL:@"http://phimhd.vn/data/uploader_09/The-Amazing-Spider-Man-2012/The-Amazing-Spider-Man-2012.jpg"];
    [film1 setStrPosterImageLocal:@"The-Amazing-Spider-Man-2012.jpg"];
    int duration = 136;
    [film1 setIntDuration:&duration];
    [film1 setStrStars:@"Columbia Pictures, Laura Ziskin Productions, Marvel Enterprises"];
    
    [self.arrNewestFilms addObject:film1];
    
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
