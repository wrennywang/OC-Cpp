//
//  MyOcClass.m
//  OC-Cpp
//
//  Created by wangzhen on 15-1-14.
//  Copyright (c) 2015年 wangzhen. All rights reserved.
//

#import "MyOcClass.h"
#import "OC-CppInterface.h"

void* OcInit()
{
    MyOcClass *p = [[MyOcClass alloc] init];
    return (__bridge_retained void *)p;
}

void OcDosomething(void *ocInstance)
{
    MyOcClass *p = (__bridge MyOcClass *)ocInstance;
    return [p doSomething];
}

void OcRelease(void *ocInstance)
{
    MyOcClass *p = (__bridge_transfer MyOcClass *)ocInstance;
    p = nil;
}

@implementation MyOcClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"MyOcClass init");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"MyOcClass dealloc");
}

- (void)doSomething
{
    NSLog(@"MyOcClass doSomething");
}

@end
