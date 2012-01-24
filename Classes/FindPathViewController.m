    //
//  FindPathViewController.m
//  Church
//
//  Created by Kang Han on 11. 5. 11..
//  Copyright 2011 SSU. All rights reserved.
//

#import "FindPathViewController.h"


@implementation FindPathViewController
@synthesize imageView_search; 
@synthesize locationManager;
@synthesize mapView;
#pragma mark -
#pragma mark CLLocationManagerDelegate Methods
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
	location=newLocation.coordinate;
	//One location is obtained.. just zoom to that location
	MKCoordinateRegion region;
	region.center=location;
	[mapView setRegion:region animated:TRUE];
}
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/
- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation{  
    MKPinAnnotationView *annView=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"MyPin"];  
    annView.animatesDrop=TRUE;  
    annView.canShowCallout = YES;  
    [annView setSelected:YES];  
    annView.pinColor = MKPinAnnotationColorPurple;  
    annView.calloutOffset = CGPointMake(-5, 5);  
    return annView;  
}  
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    mapView.mapType = MKMapTypeStandard;
    
    CLLocationCoordinate2D coord;
    coord.latitude=37.5589355;
    coord.longitude=126.9441181;
    
    CLLocationCoordinate2D coord2;
    coord2.latitude=37.557465;
    coord2.longitude=126.9463232;
    
    MKCoordinateSpan span;
	span.latitudeDelta = 0.001;//표시되는 영역의 설정 수치가 작을수록 더 확대된다.
	span.longitudeDelta= 0.005;
    MKCoordinateRegion region = {coord, span};
    [mapView setRegion:region];
    [mapView setFrame:CGRectMake(0,0,320,415)];
    [self.view insertSubview:mapView atIndex:0];
    PlaceMark *addAnnotation = [[[PlaceMark alloc] initWithCoordinate:coord] retain];  
    [addAnnotation setTitle:@"비꼴로"];
    [addAnnotation setSubTitle:@"서대문구 대현동 37-36"];
    [mapView addAnnotation:addAnnotation];
    
    PlaceMark *addAnnotation2= [[[PlaceMark alloc] initWithCoordinate:coord2] retain];  
    [addAnnotation2 setTitle:@"사무실"];
    [addAnnotation2 setSubTitle:@"서대문구 대현동 53-38 3층"];
    [mapView addAnnotation:addAnnotation2];
    
    [PlaceMark release];
    [mapView release];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[imageView_search release];
    [super dealloc];
}


@end
