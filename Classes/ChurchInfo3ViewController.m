    //
//  ChurchInfo3ViewController.m
//  Church
//
//  Created by Kang Han on 11. 5. 11..
//  Copyright 2011 SSU. All rights reserved.
//

#import "ChurchInfo3ViewController.h"
#import "VisionViewController.h"


@implementation ChurchInfo3ViewController

@synthesize VisionViewController = _VisionViewController;
@synthesize imageView_church3;
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
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"담임목사";
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"양육과정"
                                                                    style:UIBarButtonItemStyleBordered target:self action:@selector(executeWorship)];
    self.navigationItem.rightBarButtonItem = rightButton;
    [rightButton release];
}

- (void)hideTabbar:(UITabBarController *)tabbarcontroller {
    for (UIView *view in tabbarcontroller.view.subviews) {
        if ([view isKindOfClass:[UITabBar class]]) {
            [view setFrame:CGRectMake(view.frame.origin.x, 480, view.frame.size.width, view.frame.size.height)];
        } else {
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 480)];
        }
    }
}
-(IBAction)executeWorship
{
    if (_VisionViewController == nil) {
        self.VisionViewController = [[[VisionViewController alloc] initWithNibName:@"VisionViewController" bundle:[NSBundle mainBundle]] autorelease];
    }
    [self.navigationController pushViewController:_VisionViewController animated:YES];
    //[self.imageView_church3 setImage:[UIImage imageNamed:@"vision.jpg"]];
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self hideTabbar:self.tabBarController];
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
	[imageView_church3 release];
    [super dealloc];
}


@end
