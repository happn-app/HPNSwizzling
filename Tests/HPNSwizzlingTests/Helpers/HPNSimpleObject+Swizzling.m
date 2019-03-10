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

static void MyL0PrintHello1(id self, SEL _cmd);
static void (*OriginalL0PrintHello1)(id self, SEL _cmd);

static void MyL0PrintHello1(id self, SEL _cmd) {
	witnesses[@"MyL0PrintHello1"] = @YES;
	OriginalL0PrintHello1(self, _cmd);
}

+ (void)load
{
	CHECKED_SWIZZLE(HPNSimpleObject0, printHello1, MyL0PrintHello1, OriginalL0PrintHello1);
}

@end
