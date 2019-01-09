//
//  AlbumViewController.h
//  BBMInternApp1
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlbumItemViewController : UIViewController
@property (nonatomic,strong) IBOutlet UIImageView *imageView;
@property (nonatomic,strong) NSString * imageUrl;
@property (nonatomic,strong) NSString * albumData;
@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic,strong) IBOutlet UITextView *textView;
@end

NS_ASSUME_NONNULL_END
