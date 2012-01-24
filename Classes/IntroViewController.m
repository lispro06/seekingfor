    //
//  IntroViewController.m
//  Church
//
//  Created by Kang Han on 11. 5. 11..
//  Copyright 2011 SSU. All rights reserved.
//

#import "IntroViewController.h"
#import "ChurchInfo3ViewController.h"
#import "MainViewController.h"

@implementation IntroViewController

@synthesize ChurchInfo3ViewController = _ChurchInfo3ViewController;
@synthesize imageView_intro;
@synthesize transBt;
@synthesize tapGR, swipeUpGR, longPressGR, panGR, rotationGR, pinchGR;
@synthesize MainViewController = _MainViewController;

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

- (void)hideTabbar:(UITabBarController *)tabbarcontroller {
    for (UIView *view in tabbarcontroller.view.subviews) {
        if ([view isKindOfClass:[UITabBar class]]) {
            [view setFrame:CGRectMake(view.frame.origin.x, 480, view.frame.size.width, view.frame.size.height)];
        } else {
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 480)];
        }
    }
}
-(IBAction)executeTrnas
{
    if (_ChurchInfo3ViewController == nil) {
        self.ChurchInfo3ViewController = [[[ChurchInfo3ViewController alloc] initWithNibName:@"ChurchInfo3ViewController" bundle:[NSBundle mainBundle]] autorelease];
    }
    [self.navigationController pushViewController:_ChurchInfo3ViewController animated:YES];
    [self.ChurchInfo3ViewController.imageView_church3 setImage:[UIImage imageNamed:@"pastor.jpg"]];
}

- (void)showTabbar:(UITabBarController *)tabbarcontroller {
    for(UIView *view in tabbarcontroller.view.subviews)        
    {        
        if([view isKindOfClass:[UITabBar class]]) {            
            [view setFrame:CGRectMake(view.frame.origin.x, 431, view.frame.size.width, view.frame.size.height)];            
        }        
        else {            
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 431)];            
        }        
    }
}
-(IBAction)executeHome
{
    [self showTabbar:self.tabBarController];
    [self navigationController].navigationBarHidden = YES;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.imageView_intro setImage:[UIImage imageNamed:@"info2.jpg"]];
    
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self navigationController].navigationBarHidden = NO;
    [self hideTabbar:self.tabBarController];
}

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
	[imageView_intro release];
    
    [_ChurchInfo3ViewController release];
    _ChurchInfo3ViewController = nil;
    [super dealloc];
}


@end
