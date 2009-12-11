//
//  ALPhotoSource.h
//  ALThumbs1
//
//  Created by Christopher Rigor on 12/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>


@interface ALPhotoSource : TTModel <TTPhotoSource> {
    NSString* _title;
	NSMutableArray* _photos;
}

@end
