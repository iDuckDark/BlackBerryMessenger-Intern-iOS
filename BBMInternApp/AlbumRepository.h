//
//  AlbumRepository.h
//  BBMInternApp
//
//  Created by Nevin on 2019-01-09.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"
#import <ReactiveObjC/ReactiveObjC.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlbumRepository : NSObject
@property (nonatomic, strong) NSArray<Album *> *albumList;
- (RACSignal<NSData *> *)rac_downloadWithRequest;
- (NSArray<Album *> *)getRepository:(NSData *)data;
@end

NS_ASSUME_NONNULL_END
