//
//  Album.m
//  BBMInternApp
//
//  Created by Nevin on 2019-01-04.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.

#import <Foundation/Foundation.h>
#import "Album.h"

@implementation Album

- (instancetype)initWithAlbumId:(NSInteger)albumId andId:(NSInteger) photoId andTitle:(NSString*)title andURL:(NSString*) url andThumbnailURL:(NSString*) thumbnailUrl{
    self = [super init];
    self.albumId = albumId;
    self.photoId = photoId;
    self.title = title;
    self.url = url;
    self.thumbnailUrl = thumbnailUrl;
    return self;
}

- (void) print {
    NSLog(@"Album ID: %ld", self.albumId);
    NSLog(@"ID: %ld", self.photoId);
    NSLog(@"Title: %@", self.title);
    NSLog(@"URL: %@", self.url);
    NSLog(@"Thumbnail URL: %@", self.thumbnailUrl);
}

-(NSString*) convertToString {
    NSString *str=@"";
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"albumId: "];
    NSString *albumId_str = [NSString stringWithFormat: @"%ld", (long)self.albumId];
    str = [str stringByAppendingString:albumId_str];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"id: "];
    NSString *id_str = [NSString stringWithFormat: @"%ld", (long)self.photoId];
    str = [str stringByAppendingString:id_str];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"title: "];
    str = [str stringByAppendingString: self.title];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"url: "];
    str = [str stringByAppendingString: self.url];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"thumbnailUrl: "];
    str = [str stringByAppendingString: self.thumbnailUrl];
    return str;
}

-(UIImage*) getUIImage{
    NSURL *url = [NSURL URLWithString: self.url];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [[UIImage alloc] initWithData:data];
    return img;
}

-(UIImage*) getUIImageThumbnail{
    NSURL *url = [NSURL URLWithString: self.thumbnailUrl];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [[UIImage alloc] initWithData:data];
    NSData *compressedImageData = UIImageJPEGRepresentation(img, 0.1);
    UIImage *compressedImage = [[UIImage alloc] initWithData:compressedImageData];
    return compressedImage;
}

@end
