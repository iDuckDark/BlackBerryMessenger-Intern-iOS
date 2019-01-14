//
//  AlbumListViewModel.h
//  BBMInternApp
//
//  Created by Nevin on 2019-01-08.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Album;

NS_ASSUME_NONNULL_BEGIN

@interface AlbumListViewModel : NSObject
@property NSArray<Album*> *albumList;
@property RACSubject *eventReload;
- (instancetype)initWithTableView:(UITableView*)tableView;
@end

NS_ASSUME_NONNULL_END
