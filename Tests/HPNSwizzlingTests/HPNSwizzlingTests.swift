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

import XCTest
@testable import HPNSwizzling



class HPNSwizzlingTests : XCTestCase {
	
	override func setUp() {
		witnesses = [:]
	}
	
	func testSimpleSwizzleAtLoad() {
		assert(witnesses.count == 0)
		HPNSimpleObject0().test1()
		XCTAssertEqual(witnesses.object(forKey: "test1") as? Bool ?? false, true)
		XCTAssertEqual(witnesses.object(forKey: "MyL0Test1") as? Bool ?? false, true)
	}
	
	func testSimpleSwizzleInChild() {
		assert(witnesses.count == 0)
		doSimpleChildSwizzle()
		HPNSimpleObject1().test2()
		XCTAssertEqual(witnesses.object(forKey: "test2") as? Bool ?? false, true)
		XCTAssertEqual(witnesses.object(forKey: "MyL1Test2") as? Bool ?? false, true)
	}
	
	func testDoubleInvertedSwizzle() {
		assert(witnesses.count == 0)
		doDoubleInvertedSwizzle()
		HPNSimpleObject2().test3()
		XCTAssertEqual(witnesses.object(forKey: "test3") as? Bool ?? false, true)
		XCTAssertEqual(witnesses.object(forKey: "MyL1Test3") as? Bool ?? false, true)
		XCTAssertEqual(witnesses.object(forKey: "MyL2Test3") as? Bool ?? false, true)
	}
	
}
