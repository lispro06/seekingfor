//
//  GDataXMLElement-Extras.m
//  Church
//
//  Created by YeongSik Pak on 11. 9. 11..
//  Copyright 2011 cap. All rights reserved.
//

#import "GDataXMLElement-Extras.h"


@implementation GDataXMLElement(Extras)

- (GDataXMLElement *)elementForChild:(NSString *)childName {
    NSArray *children = [self elementsForName:childName];            
    if (children.count > 0) {
        GDataXMLElement *childElement = (GDataXMLElement *) [children objectAtIndex:0];
        return childElement;
    } else return nil;
}

- (NSString *)valueForChild:(NSString *)childName {    
    return [[self elementForChild:childName] stringValue];    
}

@end
