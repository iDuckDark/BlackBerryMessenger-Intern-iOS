//
//  Album.m
//  BBMInternApp1
//
//  Created by Nevin on 2019-01-04.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.

#import <Foundation/Foundation.h>
#import "Album.h"

@implementation Album
-(instancetype)init {
    self = [super init];
    albumId = Id = 0;
    title = url = thumbnailUrl = nil;
    return self;
}

- (instancetype)initWithAlbumId:(NSInteger)albumId andId:(NSInteger) Id andTitle:(NSString*)title andURL:(NSString*) url andThumbnailURL:(NSString*) thumbnailUrl{
    self->albumId = albumId;
    self->Id = Id;
    self->title =title;
    self->url = url;
    self->thumbnailUrl = thumbnailUrl;
    return self;
}

- (void)print {
    NSLog(@"Album ID: %ld", albumId);
    NSLog(@"ID: %ld", Id);
    NSLog(@"Title: %@", title);
    NSLog(@"URL: %@", url);
    NSLog(@"Thumbnail URL: %@", thumbnailUrl);
}

-(NSInteger) getAlbumId{ return albumId;}
-(NSInteger) getId{ return Id;}
-(NSString*) getTitle{ return title;}
-(NSString*) getUrl{ return url;}
-(NSString*) getThumbnailUrl{ return thumbnailUrl;}

-(NSString*) getJSON{
    NSString *str = @"Album Id: ";
    NSString *albumId_str = [NSString stringWithFormat: @"%ld", (long)albumId];
    str = [str stringByAppendingString:albumId_str];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"id: "];
    NSString *id_str = [NSString stringWithFormat: @"%ld", (long)Id];
    str = [str stringByAppendingString:id_str];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"title: "];
    str = [str stringByAppendingString: title];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"Url: "];
    str = [str stringByAppendingString: url];
    str = [str stringByAppendingString:@"\n"];
    str = [str stringByAppendingString:@"thumbnailUrl: "];
    str = [str stringByAppendingString: thumbnailUrl];
    return str;
}

@end
