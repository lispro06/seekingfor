    //
//  ChurchInfo2ViewController.m
//  Church
//
//  Created by Kang Han on 11. 5. 11..
//  Copyright 2011 SSU. All rights reserved.
//

#import "ChurchInfo2ViewController.h"

@implementation ChurchInfo2ViewController
@synthesize imageView_church2;
@synthesize webView = _webView;
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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	//[self.imageView_church2 setImage:[UIImage imageNamed:@"info2.jpg"]];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSURL *url = [[NSURL alloc] initWithString:@"http://m.facebook.com/#!/home.php?sk=group_263700287015653&__user=100001257880045"];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
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
	[imageView_church2 release];
    [super dealloc];
}


@end
