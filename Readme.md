# HPNSwizzling
![Platforms](https://img.shields.io/badge/platform-macOS%20|%20iOS%20|%20tvOS%20|%20watchOS-lightgrey.svg?style=flat) [![SPM compatible](https://img.shields.io/badge/SPM-compatible-E05C43.svg?style=flat)](https://swift.org/package-manager/) [![Carthage compatible](https://img.shields.io/badge/carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![License](https://img.shields.io/github/license/happn-tech/HPNSwizzling.svg)](License.txt) [![happn](https://img.shields.io/badge/from-happn-0087B4.svg?style=flat)](https://happn.com)

A swizzling that works.

## Installation
Either via SPM (recommended), or Carthage, or by copying `NSObject+HPNSwizzling.{h,m}` into your project.

⚠️ **Important**: If you decide to link against a so-called _static_ framework build of HPNSwizzling,
you **must** add the `-ObjC` flag in _Other Linker Flags_ (`OTHER_LDFLAGS`) in the build settings of
your project. Otherwise you’ll get a crash at runtime when Swizzling something.
The error message will be something along the lines of `+[SwizzledClass hpn_swizzle:with:store:]:
unrecognized selector sent to class`.

## Usage
```objectivec
@import HPNSwizzling; /* If installed via Carthage. */

@implementation NSView (MyViewAdditions)

static void MySetFrame(id self, SEL _cmd, CGRect frame);
static void (*OriginalSetFrame)(id self, SEL _cmd, CGRect frame);

static void MySetFrame(id self, SEL _cmd, CGRect frame) {
   // ***** CUSTOM WORK HERE *****
   OriginalSetFrame(self, _cmd, frame);
   // ***** OR HERE *****
}

+ (void)load
{
   CHECKED_SWIZZLE(NSView, setFrame:, MySetFrame, OriginalSetFrame);
}

@end
```

## Developers Notes
The include folder in the HPNSwizzling source code folder is there for SPM-compatibility. It contains
a special `HPNSwizzling.h` umbrella header and a soft link to the other header.

## Credits
This project was originally created by [François Lamboley](https://github.com/Frizlab) while working at [happn](https://happn.com).
