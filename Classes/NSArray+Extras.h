//
//  NSArray+Extras.h
//  Church
//
//  Created by YeongSik Pak on 11. 9. 12..
//  Copyright 2011 cap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Extras)

typedef NSInteger (^compareBlock)(id a, id b);

-(NSUInteger)indexForInsertingObject:(id)anObject sortedUsingBlock:(compareBlock)compare;

@end
