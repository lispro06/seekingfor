//
//  GDataXMLElement-Extras.h
//  Church
//
//  Created by YeongSik Pak on 11. 9. 11..
//  Copyright 2011 cap. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GDataXMLNode.h"

@interface GDataXMLElement (Extras)

- (GDataXMLElement *)elementForChild:(NSString *)childName;
- (NSString *)valueForChild:(NSString *)childName;

@end