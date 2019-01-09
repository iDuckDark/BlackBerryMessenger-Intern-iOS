//
//  AlbumListViewController.h
//  BBMInternApp1
//
//  Created by Nevin on 2019-01-04.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <ReactiveCocoa/ReactiveCocoa.h>

NS_ASSUME_NONNULL_BEGIN

NSString *const JSON_URL;
NSString *const SEGUE_IDENTIFIER;

@interface AlbumListViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, strong) NSArray *data;
@property(nonatomic,strong) NSArray *albums;
@end

NS_ASSUME_NONNULL_END
