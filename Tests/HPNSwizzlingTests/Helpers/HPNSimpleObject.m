/*
 * HPNSimpleObject_H.m
 * ObjCRuntimeFun
 *
 * Created by François Lamboley on 2019/2/20.
 * Copyright © 2019 Frizlab. All rights reserved.
 */

#import "HPNSimpleObject.h"

@import Foundation;



NSMutableDictionary<NSString *, NSNumber *> *witnesses = nil;


@implementation HPNSimpleObject0

- (void)printHello1
{
	witnesses[@"printHello1"] = @YES;
}

- (void)printHello2
{
	witnesses[@"printHello2"] = @YES;
}

- (void)printHello3
{
	witnesses[@"printHello3"] = @YES;
}

@end


@implementation HPNSimpleObject1

@end


@implementation HPNSimpleObject2

@end
