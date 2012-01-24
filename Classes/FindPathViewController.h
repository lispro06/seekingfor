//
//  FindPathViewController.h
//  Church
//
//  Created by Kang Han on 11. 5. 11..
//  Copyright 2011 SSU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKReverseGeocoder.h>
#import <CoreLocation/CoreLocation.h>
#import "PlaceMark.h" 
@class DisplayMap;

@interface FindPathViewController : UIViewController {
	//IBOutlet UIImageView *imageView_search;
	CLLocationManager	*locationManager;
    IBOutlet MKMapView *mapView;
	MKPlacemark *mPlacemark;
	CLLocationCoordinate2D location;

}
@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) CLLocationManager *locationManager;
@property(retain,nonatomic) 	IBOutlet UIImageView *imageView_search;
@end
