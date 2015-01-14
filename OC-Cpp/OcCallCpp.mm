//
//  OcCallCpp.m
//  OC-Cpp
//
//  Created by wangzhen on 15-1-14.
//  Copyright (c) 2015年 wangzhen. All rights reserved.
//

#import "OcCallCpp.h"

@implementation OcCallCpp

- (instancetype)init
{
    NSLog(@"OcCallCpp init");
    self = [super init];
    if (self) {
        self->mycppClass = new CMyCppClass();
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"oc call cpp dealloc");
    if (self->mycppClass != NULL) {
        delete self->mycppClass;
        self->mycppClass = NULL;
    }
}

- (void)doSomething
{
    self->mycppClass->ExampleMethod();
}

@end
