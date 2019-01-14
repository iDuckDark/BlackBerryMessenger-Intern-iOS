//
//  AlbumItemViewModel.h
//  BBMInternApp
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlbumItemViewModel : NSObject
@property (nonatomic,strong) Album* album;
- (instancetype)initWithAlbum:(Album*)album;
-(NSString*) convertToString;
-(UIImage*) getUIImage;
@end

NS_ASSUME_NONNULL_END
