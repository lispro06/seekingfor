//
//  NewsViewController.h
//  Church
//
//  Created by YeongSik Pak on 11. 9. 12..
//  Copyright 2011 cap. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewController;

@interface NewsViewController : UITableViewController {
    WebViewController *_webViewController;
    NSMutableArray *_allEntries;
    NSOperationQueue *_queue;
    NSArray *_feeds;
    
}
@property (retain) WebViewController *webViewController;
@property (retain) NSMutableArray *allEntries;
@property (retain) NSOperationQueue *queue;
@property (retain) NSArray *feeds;
@end
