//
//  DKQueue.m
//  ProCalc
//
//  Created by Dominik Krejčík on 25/09/2011.
//  Copyright 2011 Gymnázium Ledeč nad Sázavou. All rights reserved.
//

#import "DKQueue.h"

@implementation DKQueue

- (id)init
{
    self = [super init];
    if (self) {
        array = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)pop {
    if ([array count] > 0)
        [array removeObjectAtIndex:0];
}

- (void)push:(id)element {
    [array addObject:element];
}

- (id)front {
    if ([array count] > 0)
        return [array objectAtIndex:0];
    return nil;
}

- (NSInteger)size {
    return [array count];
}

- (BOOL)isEmpty {
    return [array count] == 0;
}

- (void)clear {
    [array removeAllObjects];
}

@end