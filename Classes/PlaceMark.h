//
//  PlaceMark.h
//  Church
//
//  Created by YeongSik Pak on 11. 9. 11..
//  Copyright 2011 cap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface PlaceMark : NSObject<MKAnnotation> {
    CLLocationCoordinate2D coordinate;  
    NSString *subtitletext;  
    NSString *titletext; 
}
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;  
@property (readwrite, retain) NSString *titletext;  
@property (readwrite, retain) NSString *subtitletext;  
-(id)initWithCoordinate:(CLLocationCoordinate2D) coordinate;  
- (NSString *)subtitle;  
- (NSString *)title;  
-(void)setTitle:(NSString*)strTitle;  
-(void)setSubTitle:(NSString*)strSubTitle;

@end
