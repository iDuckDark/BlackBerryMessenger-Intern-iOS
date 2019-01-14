//
//  Album.h
//  BBMInternApp
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#ifndef Album_h
#define Album_h
#import <UIKit/UIKit.h>

@interface Album : NSObject
@property(nonatomic, assign) NSInteger albumId;
@property(nonatomic, assign) NSInteger photoId;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *url;
@property(nonatomic, strong) NSString *thumbnailUrl;

- (instancetype)initWithAlbumId:(NSInteger)albumId
                          andId:(NSInteger)photoId
                       andTitle:(NSString *)title
                         andURL:(NSString *)url
                andThumbnailURL:(NSString *)thumbnailUrl;

- (void)print;
- (NSString *)convertToString;
- (UIImage *)getUIImage;
- (UIImage *)getUIImageThumbnail;

@end

#endif /* Album_h */
