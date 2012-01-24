//
//  RootViewController.h
//  RSSFun
//
//  Created by Ray Wenderlich on 1/24/11.
//  Copyright 2011 Ray Wenderlich. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewController;

@interface RootViewController : UITableViewController {
   WebViewController *_webViewController;
    NSMutableArray *_allEntries;
    NSOperationQueue *_queue;
    NSArray *_feeds;
}
-(IBAction)facebook:(id)sender;
-(void)hideTabbar:(UITabBarController *)tabbarcontroller;
-(void)showTabbar:(UITabBarController *)tabbarcontroller;
@property (retain) WebViewController *webViewController;
@property (retain) NSMutableArray *allEntries;
@property (retain) NSOperationQueue *queue;
@property (retain) NSArray *feeds;
@end
