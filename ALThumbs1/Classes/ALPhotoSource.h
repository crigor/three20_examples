//
//  ALPhotoSource.h
//

#import <Three20/Three20.h>


@interface ALPhotoSource : TTModel <TTPhotoSource> {
    NSString* _title;
	NSArray* _photos;
}

@end
