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

#import "HPNSimpleObject+Swizzling.h"

@import Foundation;

@import HPNSwizzling;



@implementation HPNSimpleObject0 (Swizzling)

static void MyL0Test1(id self, SEL _cmd);
static void (*OriginalL0Test1)(id self, SEL _cmd);

static void MyL0Test1(id self, SEL _cmd) {
	witnesses[@"MyL0Test1"] = @YES;
	OriginalL0Test1(self, _cmd);
}

+ (void)load
{
	CHECKED_SWIZZLE(HPNSimpleObject0, test1, MyL0Test1, OriginalL0Test1);
}

@end


static void MyL1Test2(id self, SEL _cmd);
static void (*OriginalL1Test2)(id self, SEL _cmd);

static void MyL1Test2(id self, SEL _cmd) {
	witnesses[@"MyL1Test2"] = @YES;
	OriginalL1Test2(self, _cmd);
}

void doSimpleChildSwizzle(void) {
	CHECKED_SWIZZLE(HPNSimpleObject1, test2, MyL1Test2, OriginalL1Test2);
}


static void MyL1Test3(id self, SEL _cmd);
static void (*OriginalL1Test3)(id self, SEL _cmd);

static void MyL1Test3(id self, SEL _cmd) {
	witnesses[@"MyL1Test3"] = @YES;
	OriginalL1Test3(self, _cmd);
}


static void MyL2Test3(id self, SEL _cmd);
static void (*OriginalL2Test3)(id self, SEL _cmd);

static void MyL2Test3(id self, SEL _cmd) {
	witnesses[@"MyL2Test3"] = @YES;
	OriginalL2Test3(self, _cmd);
}

void doDoubleInvertedSwizzle(void) {
	CHECKED_SWIZZLE(HPNSimpleObject2, test3, MyL2Test3, OriginalL2Test3);
	CHECKED_SWIZZLE(HPNSimpleObject1, test3, MyL1Test3, OriginalL1Test3);
}
