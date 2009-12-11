//
//  ALPhotoSource.m
//

#import "ALPhotoSource.h"
#import "ALPhoto.h"

@implementation ALPhotoSource
@synthesize title = _title;

- (id)init {
	_title = @"AL Photos";
    _photos = [[NSArray alloc] initWithObjects:
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm4.static.flickr.com/3246/2957580101_33c799fc09_o.jpg"
				smallURL:@"http://farm4.static.flickr.com/3246/2957580101_d63ef56b15_t.jpg"
				size:CGSizeMake(960, 1280)] autorelease],
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm4.static.flickr.com/3444/3223645618_13fe36887a_o.jpg"
				smallURL:@"http://farm4.static.flickr.com/3444/3223645618_f5e2fa7fea_t.jpg"
				size:CGSizeMake(320, 480)
				caption:@"These are the wood tiles that we had installed after the accident."] autorelease],
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm2.static.flickr.com/1124/3164979509_bcfdd72123.jpg?v=0"
				smallURL:@"http://farm2.static.flickr.com/1124/3164979509_bcfdd72123_t.jpg"
				size:CGSizeMake(320, 480)
				caption:@"A hike."] autorelease],
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm4.static.flickr.com/3106/3203111597_d849ef615b.jpg?v=0"
				smallURL:@"http://farm4.static.flickr.com/3106/3203111597_d849ef615b_t.jpg"
				size:CGSizeMake(320, 480)] autorelease],
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm4.static.flickr.com/3099/3164979221_6c0e583f7d.jpg?v=0"
				smallURL:@"http://farm4.static.flickr.com/3099/3164979221_6c0e583f7d_t.jpg"
				size:CGSizeMake(320, 480)] autorelease],
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm4.static.flickr.com/3081/3164978791_3c292029f2.jpg?v=0"
				smallURL:@"http://farm4.static.flickr.com/3081/3164978791_3c292029f2_t.jpg"
				size:CGSizeMake(320, 480)] autorelease],
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm3.static.flickr.com/2358/2179913094_3a1591008e.jpg"
				smallURL:@"http://farm3.static.flickr.com/2358/2179913094_3a1591008e_t.jpg"
				size:CGSizeMake(383, 500)] autorelease],
			  [[[ALPhoto alloc]
				initWithURL:@"http://farm4.static.flickr.com/3162/2677417507_e5d0007e41.jpg"
				smallURL:@"http://farm4.static.flickr.com/3162/2677417507_e5d0007e41_t.jpg"
				size:CGSizeMake(391, 500)] autorelease],
			  nil
			  ];
	
	for (int i = 0; i < _photos.count; ++i) {
		id<TTPhoto> photo = [_photos objectAtIndex:i];
		if ((NSNull*)photo != [NSNull null]) {
			photo.photoSource = self;
			photo.index = i;
		}
    }
	
	return self;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// TTPhotoSource

- (NSInteger)numberOfPhotos {
    return _photos.count;
}

- (NSInteger)maxPhotoIndex {
	return _photos.count-1;
}

- (id<TTPhoto>)photoAtIndex:(NSInteger)index {
	if (index < _photos.count) {
		id photo = [_photos objectAtIndex:index];
		if (photo == [NSNull null]) {
			return nil;
		} else {
			return photo;
		}
	} else {
		return nil;
	}
}
@end
