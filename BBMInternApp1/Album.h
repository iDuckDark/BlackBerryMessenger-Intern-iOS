//
//  Album.h
//  BBMInternApp1
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#ifndef Album_h
#define Album_h

@interface Album : NSObject {
    NSInteger albumId;
    NSInteger Id;
    NSString *title;
    NSString *url;
    NSString *thumbnailUrl;
}

- (instancetype)initWithAlbumId:(NSInteger)albumId andId:(NSInteger) Id andTitle:(NSString*) title andURL:(NSString*) url andThumbnailURL:(NSString*) thumbnailUrl;
- (void)print;
-(NSInteger) getAlbumId;
-(NSInteger) getId;
-(NSString*) getTitle;
-(NSString*) getUrl;
-(NSString*) getThumbnailUrl;
-(NSString*) getJSON;

@end

#endif /* Album_h */
