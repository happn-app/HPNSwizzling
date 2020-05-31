/*
Copyright 2019 happn

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

@import XCTest;
@import HPNSwizzling;

#import "Helpers/HPNSimpleObject.h"
#import "Helpers/HPNSimpleObject+Swizzling.h"



void _HPNSwizzling_heyTheresARealSymbolInThisLib_(void);


@interface HPNSwizzlingTestsObjC : XCTestCase
@end


@implementation HPNSwizzlingTestsObjC

- (void)setUp
{
	witnesses = [NSMutableDictionary new];
}

- (void)testSimpleSwizzleAtLoad
{
	assert(witnesses.count == 0);
	[[HPNSimpleObject0 new] doTest1];
	XCTAssertEqual(witnesses[@"test1"], @YES);
	XCTAssertEqual(witnesses[@"MyL0Test1"], @YES);
}

- (void)testSimpleSwizzleInChild
{
	assert(witnesses.count == 0);
	doSimpleChildSwizzle();
	[[HPNSimpleObject1 new] doTest2];
	XCTAssertEqual(witnesses[@"test2"], @YES);
	XCTAssertEqual(witnesses[@"MyL1Test2"], @YES);
}

- (void)testDoubleInvertedSwizzle
{
	assert(witnesses.count == 0);
	doDoubleInvertedSwizzle();
	[[HPNSimpleObject2 new] doTest3];
	XCTAssertEqual(witnesses[@"test3"], @YES);
	XCTAssertEqual(witnesses[@"MyL1Test3"], @YES);
	XCTAssertEqual(witnesses[@"MyL2Test3"], @YES);
}

@end
