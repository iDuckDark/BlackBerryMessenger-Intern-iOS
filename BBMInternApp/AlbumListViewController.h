//
//  AlbumListViewController.h
//  BBMInternApp
//
//  Created by Nevin on 2019-01-04.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AlbumListViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface AlbumListViewController : UITableViewController
@property (nonatomic, strong) IBOutlet UIBarButtonItem *infoButton;
@property (nonatomic, strong) AlbumListViewModel *albumsListModel;
@end

NS_ASSUME_NONNULL_END
