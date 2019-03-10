/*
 * HPNSimpleObject_H.h
 * ObjCRuntimeFun
 *
 * Created by François Lamboley on 2019/2/20.
 * Copyright © 2019 Frizlab. All rights reserved.
 */

@import Foundation;



NS_ASSUME_NONNULL_BEGIN

extern NSMutableDictionary<NSString *, NSNumber *> * _Null_unspecified witnesses;


@interface HPNSimpleObject0 : NSObject

- (void)test1;
- (void)test2;
- (void)test3;

@end


@interface HPNSimpleObject1 : HPNSimpleObject0

@end


@interface HPNSimpleObject2 : HPNSimpleObject1

@end

NS_ASSUME_NONNULL_END
