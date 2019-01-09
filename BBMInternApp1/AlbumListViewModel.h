//
//  AlbumListViewModel.h
//  BBMInternApp11
//
//  Created by Nevin on 2019-01-08.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <ReactiveCocoa/ReactiveCocoa.h>

NS_ASSUME_NONNULL_BEGIN

NSString *const JSON_URL1;

@interface AlbumListViewModel : NSObject

@property (nonatomic, strong) NSArray *jsonResult;

//@property (nonatomic, strong) RACSignal *rxEventAlbumTextField;
//@property (nonatomic, strong) RACSignal *rxEventAlbumImage;

//Not needed
@property(nonatomic, strong) NSArray *data;
@property(nonatomic,strong) NSArray *albums;
@end

NS_ASSUME_NONNULL_END
