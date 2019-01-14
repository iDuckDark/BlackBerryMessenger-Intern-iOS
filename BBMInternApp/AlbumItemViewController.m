//
//  AlbumViewController.m
//  BBMInternApp
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import "AlbumItemViewController.h"

@implementation AlbumItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setText];
    [self setImage];
}

-(void) setText {
    [self.textView setText:[self.albumItemViewModel convertToString] ];
}

-(void) setImage {
    [self.imageView setImage:[self.albumItemViewModel getUIImage]];
}

@end
