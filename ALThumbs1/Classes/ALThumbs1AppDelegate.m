//
//  ALThumbs1AppDelegate.m
//

#import "ALThumbs1AppDelegate.h"
#import "ALThumbsViewController.h"

@implementation ALThumbs1AppDelegate

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
