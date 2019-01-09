//
//  AlbumListViewController.m
//  BBMInternApp1
//
//  Created by Nevin on 2019-01-04.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.

#import "AlbumListViewController.h"
#import "AlbumItemViewController.h"
#import "Album.h"

NSString *const JSON_URL = @"https://jsonplaceholder.typicode.com/albums/1/photos";
NSString *const SEGUE_IDENTIFIER = @"onClickViewAlbum";

@interface AlbumListViewController ()
@end

@implementation AlbumListViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"Album";
    
  NSData *JSONData =
      [NSData dataWithContentsOfURL:[NSURL URLWithString:JSON_URL]];
  NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:JSONData
                                                        options:kNilOptions
                                                          error:nil];
    
    
  // NSLog(@"json: %@", jsonResult);
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
    //[album print];
  }
  self.albums = _tempArray;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
    numberOfRowsInSection:(NSInteger)section {
  return self.albums.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell =
      [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                      forIndexPath:indexPath];

  //    RAC(cell.textLabel, text) = RACObserve(self.textView, text);
  cell.textLabel.text = [self.albums[indexPath.row] getTitle];
  cell.imageView.image = [UIImage imageNamed:@"image.png"];

  dispatch_async(dispatch_get_global_queue(0, 0), ^{
    NSData *data = [[NSData alloc]
        initWithContentsOfURL:[NSURL URLWithString:[self.albums[indexPath.row]
                                                       getThumbnailUrl]]];
    if (data == nil)
      return;
    dispatch_async(dispatch_get_main_queue(), ^{
      cell.imageView.image = [UIImage imageWithData:data];
    });
  });
  return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString: SEGUE_IDENTIFIER]) {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    AlbumItemViewController *destination =
        (AlbumItemViewController *)segue.destinationViewController;
    destination.imageUrl = [self.albums[indexPath.row] getUrl];
    destination.albumData = [self.albums[indexPath.row] getJSON];
  }
}

@end
