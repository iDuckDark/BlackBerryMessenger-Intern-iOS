//
//  AlbumRepository.m
//  BBMInternApp
//
//  Created by Nevin on 2019-01-09.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//
#import <ReactiveObjC/ReactiveObjC.h>
#import "AlbumRepository.h"

NSString *const JSON_URL = @"https://jsonplaceholder.typicode.com/albums/1/photos";

@implementation AlbumRepository

-(NSArray<Album*>*) getRepository :(NSData*) data {
    NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSMutableArray *_tempArray = [NSMutableArray array];
    for (id item in jsonResult) {
        Album *album = [[Album alloc]
                        initWithAlbumId:[item[@"albumId"] intValue]
                        andId:[item[@"id"] intValue]
                        andTitle:item[@"title"]
                        andURL:item[@"url"]
                        andThumbnailURL:[NSString
                                         stringWithFormat:@"%@", item[@"thumbnailUrl"]]];
        [_tempArray addObject:album];
    }
    return [_tempArray copy];
}

-(RACSignal<NSData *> *) rac_downloadWithRequest {
    return [[RACSignal createSignal:^(id<RACSubscriber> subscriber) {
        NSURLSession *session = [NSURLSession sharedSession];
        NSURL *url = [[NSURL alloc] initWithString:JSON_URL];
        [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            if (error) {
                [subscriber sendError:error];
                NSLog(@"subscribe error...: %@", error);
            }
            if (data) {
                [subscriber sendNext: data];
                [subscriber sendCompleted];
//                NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data
//                                                                      options:kNilOptions
//                                                                        error:nil];
//                NSLog(@"JSON Response: %@", jsonResult);
            }
            [subscriber sendNext:nil];
        }] resume];
        
        return [RACDisposable disposableWithBlock:^{
            [session invalidateAndCancel];
        }];
    }]
            setNameWithFormat:@"+rac_sendAsynchronousRequest"];
}

@end
