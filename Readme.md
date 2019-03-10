# HPNSwizzling
A swizzling that works.

## Installation

Either via Carthage (recommended), or by copying `NSObject+HPNSwizzling.{h,m}` into your project.

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

## License
[Apache License 2.0](License.txt)
