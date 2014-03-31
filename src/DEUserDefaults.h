//
//  DEUserDefaults.h
//
//  Created by Jeremy Flores on 3/31/14.
//  Copyright (c) 2014 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSUserDefaults * DEUserDefaults;


@interface NSUserDefaults (DEUserDefaults)

-(id)objectForKeyedSubscript:(id<NSCopying>)key;

-(void)setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key;

@end