//
//  AlbumItemViewModel.m
//  BBMInternApp1
//
//  Created by Nevin on 2019-01-07.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import "AlbumItemViewModel.h"
//#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation AlbumItemViewModel

//NSString *Test = @"https://via.placeholder.com/600/771796";
//NSString *Test1 = @"https://jsonplaceholder.typicode.com/albums/1/photos";

//- (instancetype)init {
//  self = [super init];
//  if (self) {
//    //NSURL *url = [[NSURL alloc] initWithString:Test];
////    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
////      [request setHTTPMethod:@"GET"];
//
////    [[self rac_downloadWithRequest:request] subscribeNext:^(id x) {
////      NSLog(@"subscribe...: %@", x);
////    }];
//  }
//  return self;
//}

//-----------------------

//- (RACSignal *)rac_downloadWithRequest:(NSURLRequest *)request {
//  return [[RACSignal createSignal:^(id<RACSubscriber> subscriber) {
//
//      [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//
////      }]
////    [[[NSURLSession sharedSession]
////        downloadTaskWithRequest:request
////              completionHandler:^(NSURL *location, NSURLResponse *response,
////                                  NSError *error) {
////                if (response == nil || location == nil) {
////                  [subscriber sendError:error];
////                } else {
//                  NSLog(@"download with request: %@", response);
//                  [subscriber sendNext:response];
//                  [subscriber sendCompleted];
////                }
//              }] resume];
//
//      return [[RACDisposable disposableWithBlock:^{
//      }];
//
//  }] setNameWithFormat:@"+rac_sendAsynchronousRequest: %@", request];
//}
@end
