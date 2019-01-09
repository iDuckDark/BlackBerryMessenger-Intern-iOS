//
//  AlbumViewController.m
//  BBMInternApp1
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import "AlbumItemViewController.h"
#import "AlbumItemViewModel.h"
//#import <ReactiveCocoa/ReactiveCocoa.h>

@interface AlbumItemViewController ()
@end

@implementation AlbumItemViewController

- (void)viewDidLoad {
  //AlbumItemViewModel *albumItemViewModel = [[AlbumItemViewModel alloc] init];
  // RAC(imageview, image) = RACObserve(model, data).map

  //    model.rx.
  //    subscribe {
  //         [self.imageView setImage:[UIImage imageWithData:data]];
  //    }
  [super viewDidLoad];
  [self.textView setText:_albumData];
  dispatch_async(
      dispatch_get_global_queue(0, 0), ^{
        NSData * data = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: self.imageUrl]];
        if ( data == nil )
          return;
        dispatch_async(dispatch_get_main_queue(), ^{
          [self.imageView setImage:[UIImage imageWithData:data]];
        });
      });

}

@end
