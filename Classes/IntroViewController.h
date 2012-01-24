//
//  IntroViewController.h
//  Church
//
//  Created by Kang Han on 11. 5. 11..
//  Copyright 2011 SSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ChurchInfo3ViewController;
@class MainViewController;

@interface IntroViewController : UIViewController <UIGestureRecognizerDelegate>{
    ChurchInfo3ViewController *_ChurchInfo3ViewController;
    MainViewController *_MainViewController;
	IBOutlet UIImageView *imageView_intro;
    IBOutlet UIBarButtonItem *transBt;
    
	UITapGestureRecognizer *tapGR;
	UISwipeGestureRecognizer *swipeUpGR;
	UILongPressGestureRecognizer *longPressGR;
	UIPanGestureRecognizer *panGR;
	UIRotationGestureRecognizer *rotationGR;
	UIPinchGestureRecognizer *pinchGR;
}

-(IBAction)executeHome;
-(IBAction)executeTrnas;
-(void)hideTabbar:(UITabBarController *)tabbarcontroller;

@property(retain,nonatomic) 	IBOutlet UIImageView *imageView_intro;
@property(retain,nonatomic) 	IBOutlet UIBarButtonItem *transBt;
@property (nonatomic, retain) UITapGestureRecognizer *tapGR;
@property (nonatomic, retain) UISwipeGestureRecognizer *swipeUpGR;
@property (nonatomic, retain) UILongPressGestureRecognizer *longPressGR;
@property (nonatomic, retain) UIPanGestureRecognizer *panGR;
@property (nonatomic, retain) UIRotationGestureRecognizer *rotationGR;
@property (nonatomic, retain) UIPinchGestureRecognizer *pinchGR;

@property (retain) ChurchInfo3ViewController *ChurchInfo3ViewController;
@property (retain) MainViewController *MainViewController;
@end
