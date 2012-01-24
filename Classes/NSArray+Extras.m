//
//  NSArray+Extras.m
//  Church
//
//  Created by YeongSik Pak on 11. 9. 12..
//  Copyright 2011 cap. All rights reserved.
//

#import "NSArray+Extras.h"
@implementation NSArray (Extras)

-(NSUInteger)indexForInsertingObject:(id)anObject sortedUsingBlock:(compareBlock)compare {
    NSUInteger index = 0;
    NSUInteger topIndex = [self count];
    while (index < topIndex) {
        NSUInteger midIndex = (index + topIndex) / 2;
        id testObject = [self objectAtIndex:midIndex];
        if (compare(anObject, testObject) < 0) {
            index = midIndex + 1;
        } else {
            topIndex = midIndex;
        }
    }
    return index;
}
@end
