//
//  AlbumListViewModel.m
//  BBMInternApp11
//
//  Created by Nevin on 2019-01-08.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import "AlbumListViewModel.h"

NSString *const JSON_URL1 = @"https://jsonplaceholder.typicode.com/albums/1/photos";

@implementation AlbumListViewModel
- (instancetype)init{
    self = [super init];
    if (self) {
      NSData *JSONData =
          [NSData dataWithContentsOfURL:[NSURL URLWithString:JSON_URL1]];
      self.jsonResult = [NSJSONSerialization JSONObjectWithData:JSONData
                                                   options:kNilOptions
                                                     error:nil];
    }
    return self;
}

-(NSArray*) getJSONArray{
    return self.jsonResult;
}

@end
