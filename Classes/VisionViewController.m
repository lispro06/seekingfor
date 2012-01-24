//
//  VisionViewController.m
//  Church
//
//  Created by YeongSik Pak on 11. 12. 26..
//  Copyright 2011 cap. All rights reserved.
//

#import "VisionViewController.h"


@implementation VisionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)hideTabbar:(UITabBarController *)tabbarcontroller {
    for (UIView *view in tabbarcontroller.view.subviews) {
        if ([view isKindOfClass:[UITabBar class]]) {
            [view setFrame:CGRectMake(view.frame.origin.x, 480, view.frame.size.width, view.frame.size.height)];
        } else {
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 480)];
        }
    }
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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self navigationController].navigationBarHidden = NO;
    [self hideTabbar:self.tabBarController];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title=@"양육과정";
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"메뉴보기"
                                                                    style:UIBarButtonItemStyleBordered target:self action:@selector(executeHome)];
    self.navigationItem.rightBarButtonItem = rightButton;
    [rightButton release];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
