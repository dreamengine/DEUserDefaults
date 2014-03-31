//
//  DEUserDefaults.m
//
//  Created by Jeremy Flores on 3/31/14.
//  Copyright (c) 2014 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEUserDefaults.h"

NSUserDefaults * DEUserDefaults = nil;

__attribute__ ((constructor))
static void DEUserDefaults_initializer() {
    DEUserDefaults = NSUserDefaults.standardUserDefaults;
}


@implementation NSUserDefaults (DEUserDefaults)

-(id)objectForKeyedSubscript:(id<NSCopying>)key {
    id object = nil;
    if ([(NSObject *)key isKindOfClass:NSString.class]) {
        object = [self objectForKey:(NSString *)key];
    }

    return object;
}

-(void)setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key {
    if ([(NSObject *)key isKindOfClass:NSString.class]) {
        [self setObject: obj
                 forKey: (NSString *)key];
    }
}

@end
