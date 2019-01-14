//
//  AlbumViewController.h
//  BBMInternApp
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveObjC/ReactiveObjC.h>
#import "AlbumItemViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlbumItemViewController : UIViewController
@property (nonatomic,strong) AlbumItemViewModel *albumItemViewModel;
@property (nonatomic,strong) IBOutlet UIImageView *imageView;
@property (nonatomic,strong) IBOutlet UITextView *textView;
@end

NS_ASSUME_NONNULL_END
