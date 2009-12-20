//
//  ALPhotoSource.h
//

#import <Three20/Three20.h>
#import "FlickrJSONResponse.h"

@interface ALPhotoSource : TTURLRequestModel <TTPhotoSource> {
    NSString* _title;
	NSArray* _photos;
	FlickrJSONResponse* responseProcessor;
	NSUInteger page;
}

@end
