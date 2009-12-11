//
//  ALThumbsViewController.m
//  ALThumbs1
//
//  Created by Christopher Rigor on 12/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ALThumbsViewController.h"
#import "ALPhotoSource.h"

@implementation ALThumbsViewController

- (void)viewDidLoad {
	ALPhotoSource *alPhotoSource = [[ALPhotoSource alloc] init];
	self.photoSource = alPhotoSource;
}

@end
