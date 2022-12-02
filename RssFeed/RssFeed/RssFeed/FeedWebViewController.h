//
//  FeedWebViewController.h
//  RssFeed
//
//  Created by Bharath Reddy on 01/12/22.
//

#import <UIKit/UIKit.h>
#import <WebKit/WKWebView.h>
#import <WebKit/WKWebViewConfiguration.h>
NS_ASSUME_NONNULL_BEGIN

@interface FeedWebViewController : UIViewController <WKUIDelegate>
-(instancetype)initWithUrl:(NSString *)URL;
@end

NS_ASSUME_NONNULL_END
