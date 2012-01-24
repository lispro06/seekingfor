//
//  WebViewController.h
//  Church
//
//  Created by YeongSik Pak on 11. 9. 12..
//  Copyright 2011 cap. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSSEntry;
@interface WebViewController : UIViewController {
    UIWebView *_webView;
    RSSEntry *_entry;
}
@property (retain) IBOutlet UIWebView *webView;
@property (retain) RSSEntry *entry;
@end
