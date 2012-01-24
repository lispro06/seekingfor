//
//  PlaceMark.m
//  Church
//
//  Created by YeongSik Pak on 11. 9. 11..
//  Copyright 2011 cap. All rights reserved.
//

#import "PlaceMark.h"


@implementation PlaceMark
@synthesize coordinate, titletext, subtitletext;
- (NSString *)subtitle{  
    return subtitletext;  
}  
- (NSString *)title{  
    return titletext;  
}  

-(void)setTitle:(NSString*)strTitle {  
    self.titletext = strTitle;  
}  

-(void)setSubTitle:(NSString*)strSubTitle {  
    self.subtitletext = strSubTitle;  
}  

-(id)initWithCoordinate:(CLLocationCoordinate2D) c{  
    coordinate=c;  
    return self;  
}
@end
