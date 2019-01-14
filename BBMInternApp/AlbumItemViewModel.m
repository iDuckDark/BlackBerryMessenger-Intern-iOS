//
//  AlbumItemViewModel.m
//  BBMInternApp
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <ReactiveObjC/ReactiveObjC.h>
#import "AlbumItemViewModel.h"

@implementation AlbumItemViewModel
- (instancetype)initWithAlbum:(Album*)album{
    self = [super init];
    if (self) {
        self.album = album;
    }
    return self;
}

-(NSString*) convertToString {
    return [self.album convertToString];
}

-(UIImage*) getUIImage {
    return [self.album getUIImage];
}

@end
