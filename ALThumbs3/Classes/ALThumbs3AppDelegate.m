//
//  ALThumbs3AppDelegate.m
//  ALThumbs3
//
//  Created by Christopher Rigor on 12/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ALThumbs3AppDelegate.h"
#import "ALThumbsViewController.h"

@implementation ALThumbs3AppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[ALThumbsViewController alloc] init]];
	[window addSubview:nav.view];
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
