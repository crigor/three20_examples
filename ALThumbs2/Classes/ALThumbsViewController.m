//
//  ALThumbsViewController.m
//

#import "ALThumbsViewController.h"
#import "ALPhotoSource.h"

@implementation ALThumbsViewController

- (void)viewDidLoad {
	ALPhotoSource *alPhotoSource = [[ALPhotoSource alloc] init];
	self.photoSource = alPhotoSource;
}

@end
