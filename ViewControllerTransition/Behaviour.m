//
//  Behaviour.m
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import "Behaviour.h"
#import <objc/runtime.h>

@implementation Behaviour

- (void)setOwner:(id)owner
{
    if (_owner != owner) {
        [self releaseLifetimeFromObject:_owner];
        _owner = owner;
        [self bindLifetimeToObject:_owner];
    }
}

- (void)bindLifetimeToObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, self, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)releaseLifetimeFromObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)dealloc
{
    NSLog(@"Dealloc %@",NSStringFromClass([self class]));
}

@end
