//
//  ALThumbs2AppDelegate.m
//  ALThumbs2
//
//  Created by Christopher Rigor on 12/11/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ALThumbs2AppDelegate.h"
#import "ALThumbsViewController.h"

@implementation ALThumbs2AppDelegate

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
