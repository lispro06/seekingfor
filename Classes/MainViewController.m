//
//  MainViewController.m
//  Church
//
//  Created by YeongSik Pak on 11. 9. 12..
//  Copyright 2011 cap. All rights reserved.
//

#import "MainViewController.h"
#import "NewsViewController.h"
#import "FindPathViewController.h"
#import "IntroViewController.h"

@implementation MainViewController

@synthesize imageView_church1;
@synthesize TabClick;
@synthesize tabcontroller;
@synthesize BackWindow;
-(IBAction)go:(id)sender{//주일설교
    self.tabBarController.selectedIndex = 1;
    [self showTabbar:self.tabBarController];
    [self deleteTabbar:self.tabBarController];
}
-(IBAction)song:(id)sender{//예배특송
    self.tabBarController.selectedIndex = 3;
    [self showTabbar:self.tabBarController];
    [self deleteTabbar:self.tabBarController];
}
-(IBAction)findpath:(id)sender{//오시는 길
    self.tabBarController.selectedIndex = 4;
    [self showTabbar:self.tabBarController];
    [self deleteTabbar:self.tabBarController];
}
-(IBAction)InfoView:(id)sender{//교회소개
    self.tabBarController.selectedIndex = 0;
  //  [self showTabbar:self.tabBarController];
    [self deleteTabbar:self.tabBarController];
}
-(IBAction)RootView:(id)sender{//예비
    self.tabBarController.selectedIndex = 1;
    [self showTabbar:self.tabBarController];
    [self deleteTabbar:self.tabBarController];
}
- (IBAction)doSomething:(id)pId;//페이스북
{
    self.tabBarController.selectedIndex = 2;
    [self showTabbar:self.tabBarController];
    [self deleteTabbar:self.tabBarController];
   // [self.view removeFromSuperview];
   // [BackWindow.window addSubview:tabcontroller.view];
    
}
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
- (void)hideTabbar:(UITabBarController *)tabbarcontroller {
    for (UIView *view in tabbarcontroller.view.subviews) {
        if ([view isKindOfClass:[UITabBar class]]) {
            [view setFrame:CGRectMake(view.frame.origin.x, 480, view.frame.size.width, view.frame.size.height)];
        } else {
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 480)];
        }
    }
}
- (void)deleteTabbar:(UITabBarController *)tabbarcontroller {
    [self.view removeFromSuperview];
        NSMutableArray * vcs = [NSMutableArray
                                arrayWithArray:[self.tabBarController viewControllers]];
        [vcs removeObjectAtIndex:5];
        [self.tabBarController setViewControllers:vcs];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self hideTabbar:self.tabBarController];
   
}

- (void)pinchImage:(UIPinchGestureRecognizer *)gestureRecognizer {
    
    if ([gestureRecognizer state] == UIGestureRecognizerStateBegan ||
        [gestureRecognizer state] == UIGestureRecognizerStateChanged) {
        [gestureRecognizer view].transform =
        CGAffineTransformScale([[gestureRecognizer view] transform],
                               [gestureRecognizer scale], [gestureRecognizer scale]);
        [gestureRecognizer setScale:1];
        NSLog(@"fdsf");
    }
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
