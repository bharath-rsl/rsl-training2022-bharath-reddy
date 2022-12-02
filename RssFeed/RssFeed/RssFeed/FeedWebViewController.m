
#import <WebKit/WKWebView.h>
#import <WebKit/WKWebViewConfiguration.h>
#import "FeedWebViewController.h"

@interface FeedWebViewController ()
@property (nonatomic,strong)NSString * URL;
@end

@implementation FeedWebViewController

-(instancetype)initWithUrl:(NSString *)URL{
    self=[super init];
    if(self){
        
        _URL=URL;
    }
    return(self);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 700) ];
    NSLog(@"url:%@",self.URL);
    NSMutableCharacterSet *characterSet = [[NSCharacterSet URLPathAllowedCharacterSet] mutableCopy];
    
    NSURL *url = [NSURL URLWithString:[self.URL stringByAddingPercentEncodingWithAllowedCharacters:characterSet]];
    
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(backButtonTapped:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Back" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 750, 160.0, 40.0);
    [self.view addSubview:button];
    
    
}

-(void)backButtonTapped:(UIButton *)sender{
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
