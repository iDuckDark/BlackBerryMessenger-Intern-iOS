//
//  AlbumRepositoryTest.m
//  BBMInternAppTests
//
//  Created by Nevin on 2019-01-11.
//  Copyright © 2019 BBM Intern iOS Ottawa. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../BBMInternApp/AlbumRepository.h" //#import "AlbumRepository.h"
#import <ReactiveObjC/ReactiveObjC.h>

@interface AlbumRepositoryTest : XCTestCase
@end

@implementation AlbumRepositoryTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)test_getRepository {
    AlbumRepository *albumRepository = [[AlbumRepository alloc] init];
    [[[albumRepository rac_downloadWithRequest]
      deliverOnMainThread] subscribeNext:^(id data) {
        NSArray<Album*> *albumList = [albumRepository getRepository:data];
        XCTAssertEqual(albumList.count, 5000, "Album List Test Expected");
    }];
}


- (void)testRAC_downloadWithRequest {
    XCTestExpectation *expect =  [self expectationWithDescription:@"test"];
    AlbumRepository *albumRepository = [[AlbumRepository alloc] init];
    [[albumRepository rac_downloadWithRequest]
                      subscribeNext:^(NSData *_Nullable x) {
                          [expect fulfill];
                      }];
    [self waitForExpectations:@[expect] timeout:1.0];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
