//
//  ChurchInfo3ViewController.h
//  Church
//
//  Created by Kang Han on 11. 5. 11..
//  Copyright 2011 SSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VisionViewController;

@interface ChurchInfo3ViewController : UIViewController {
    VisionViewController *_VisionViewController;
	IBOutlet UIImageView *imageView_church3;

}

-(IBAction)executeWorship;
@property (retain) VisionViewController *VisionViewController;
@property(retain,nonatomic) 	IBOutlet UIImageView *imageView_church3;

@end
