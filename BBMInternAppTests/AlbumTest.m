



//
//  AlbumTest.m
//  BBMInternApp1Tests
//
//  Created by Nevin on 2019-01-11.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Album.h"

@interface AlbumTest : XCTestCase
@property(nonatomic, strong) Album *sut;
@property NSInteger albumId;
@property NSInteger photoId;
@property NSString *title;
@property NSString *url;
@property NSString *thumbnailUrl;
@end

@implementation AlbumTest

- (void)setUp {
  self.albumId = 1;
  self.photoId = 1;
  self.title = @"accusamus beatae ad facilis cum similique qui sunt";
  self.url = @"https://via.placeholder.com/600/92c952";
  self.thumbnailUrl = @"https://via.placeholder.com/150/92c952";
}

- (void)tearDown {
}

- (void)testInit {
  self.sut = [[Album alloc] initWithAlbumId:self.albumId
                                      andId:self.photoId
                                   andTitle:self.title
                                     andURL:self.url
                            andThumbnailURL:self.thumbnailUrl];
  XCTAssertEqual([self.sut albumId], self.albumId, "Album Id Expected");
  XCTAssertEqual([self.sut photoId], self.photoId, "Photo Id Expected");
  XCTAssertEqual([self.sut title], self.title, "Title Expected");
  XCTAssertEqual([self.sut url], self.url, "URL Expected");
  XCTAssertEqual([self.sut thumbnailUrl], self.thumbnailUrl,
                 "Thumbnail URL Expected");
}

- (void)testConvertToString {

  self.sut = [[Album alloc] initWithAlbumId:self.albumId
                                      andId:self.photoId
                                   andTitle:self.title
                                     andURL:self.url
                            andThumbnailURL:self.thumbnailUrl];
  NSString *str = @"";
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"albumId: "];
  NSString *albumId_str =
      [NSString stringWithFormat:@"%ld", (long)self.albumId];
  str = [str stringByAppendingString:albumId_str];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"id: "];
  NSString *id_str = [NSString stringWithFormat:@"%ld", (long)self.photoId];
  str = [str stringByAppendingString:id_str];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"title: "];
  str = [str stringByAppendingString:self.title];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"url: "];
  str = [str stringByAppendingString:self.url];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"\n"];
  str = [str stringByAppendingString:@"thumbnailUrl: "];
  str = [str stringByAppendingString:self.thumbnailUrl];
  XCTAssert([[self.sut convertToString] isEqualToString:str],
            "Convert to String Expected");
}

- (void)testGetUIImage {
  UIImage *image1 = [self.sut getUIImage];
  NSData *data1 = UIImagePNGRepresentation(image1);
  NSURL *url2 = [NSURL URLWithString:self.url];
  NSData *data2 = [NSData dataWithContentsOfURL:url2];
  XCTAssert(![data1 isEqual:data2], "Image Expected");
}

- (void)testPerformanceExample {
  [self measureBlock:^{
      // Put the code you want to measure the time of here.
  }];
}

@end
