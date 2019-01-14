//
//  AlbumListViewController.m
//  BBMInternApp
//
//  Created by Nevin on 2019-01-04.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import "AlbumListViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "AlbumItemViewController.h"
#import "AlbumRepository.h"
#import "AlbumListViewModel.h"

NSString *const SEGUE_IDENTIFIER = @"onClickViewAlbum";

@interface AlbumListViewController ()
<UITableViewDataSource,
UITableViewDelegate>

@end

@implementation AlbumListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Album";
    self.albumsListModel = [[AlbumListViewModel alloc] initWithTableView:self.tableView ];
    //RAC(self.tableView, reloadData) = RACObserve(self.albumsListModel, eventReload);
    [[self.albumsListModel eventReload] subscribeCompleted:^{
        [self.tableView reloadData];
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.albumsListModel.albumList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Album *album = [self getAlbum:indexPath.row];
    cell.textLabel.text = [album title];
    cell.imageView.image = [album getUIImageThumbnail];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: SEGUE_IDENTIFIER]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        AlbumItemViewController *destination =(AlbumItemViewController *)segue.destinationViewController;
        Album *album = [self getAlbum:indexPath.row];
        destination.albumItemViewModel = [[AlbumItemViewModel alloc] initWithAlbum: album ];
    }
}

-(Album*) getAlbum:(NSInteger)index{
    return self.albumsListModel.albumList[index];
}

@end
