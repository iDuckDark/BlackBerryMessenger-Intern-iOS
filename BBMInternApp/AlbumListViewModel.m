//
//  AlbumListViewModel.m
//  BBMInternApp
//
//  Created by Nevin on 2019-01-08.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <ReactiveObjC/ReactiveObjC.h>
#import "AlbumListViewModel.h"
#import "AlbumRepository.h"

@interface AlbumListViewModel ()
@end

@implementation AlbumListViewModel
- (instancetype)initWithTableView:(UITableView*)tableView{
    self = [super init];
    if (self) {
         @weakify(self)
        AlbumRepository *albumRepository = [[AlbumRepository alloc] init];
        self.eventReload = [RACSubject subject];
        [[[albumRepository rac_downloadWithRequest]
          deliverOnMainThread] subscribeNext:^(id data) {
            @strongify(self)
            self.albumList = [albumRepository getRepository:data];
            [self.eventReload sendNext: nil];
            [self.eventReload sendCompleted];
            //NSLog(@"Output is %@", self.eventReload);
        }];
    }
    return self;
}

@end
