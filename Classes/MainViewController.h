//
//  MainViewController.h
//  Church
//
//  Created by YeongSik Pak on 11. 9. 12..
//  Copyright 2011 cap. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainViewController : UIViewController {
	IBOutlet UIImageView *imageView_church1;
    IBOutlet UIButton *TabClick;
	IBOutlet UITabBarController *tabcontroller;
    IBOutlet UIWindow *BackWindow;
}
@property(retain,nonatomic) 	IBOutlet UIImageView *imageView_church1;
@property(retain,nonatomic) 	IBOutlet UIButton *TabClick;
@property(retain,nonatomic) 	IBOutlet UIWindow *BackWindow;
@property (nonatomic,retain) IBOutlet UITabBarController *tabcontroller;
- (IBAction)doSomething:(id)pId;
-(IBAction)go:(id)sender;
-(IBAction)song:(id)sender;
-(IBAction)RootView:(id)sender;
-(IBAction)findpath:(id)sender;
-(IBAction)InfoView:(id)sender;
-(void)hideTabbar:(UITabBarController *)tabbarcontroller;
-(void)deleteTabbar:(UITabBarController *)tabbarcontroller;
-(void)showTabbar:(UITabBarController *)tabbarcontroller;

@end
