

#import "ViewController.h"
#import "RssDataSource.h"
#import "RssTableViewDelegate.h"
#import "RssUrlViewCellTableViewCell.h"
#import "ListViewController.h"
@interface ViewController () <fetchingRssFeedDeligate,NSXMLParserDelegate>
@property (nonatomic,strong) RssDataSource* rssDataSource;
@property (nonatomic,strong) NSMutableArray<RssUrlDataModal *> * URL;
@property (strong, nonatomic)  UITableView *rssUrltableView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic,strong) RssTableViewDelegate *rssTableViewDelegate;
@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    //self.activityIndicator.hidden=YES;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.rssUrltableView=[[UITableView alloc] initWithFrame:CGRectMake(25,235,357,608) style:UITableViewStylePlain];
    //[self.rssUrltableView setSeparatorColor:UIColor.blackColor];
    [self.view addSubview:self.rssUrltableView];
    
    self.URL=[NSMutableArray array];
    self.rssDataSource=[[RssDataSource alloc] initWithUrl:self.URL];
    self.rssTableViewDelegate=[[RssTableViewDelegate alloc] initWithUrl:self.URL];
    self.rssUrltableView.dataSource = self.rssDataSource;
    self.rssUrltableView.delegate = self.rssTableViewDelegate;
    self.rssTableViewDelegate.delegate=self;
    [self.rssUrltableView registerClass:[RssUrlViewCellTableViewCell class] forCellReuseIdentifier:@"cellReuseIdentifier"];
}
- (void)showFeedList:(NSString *)URL{
    ListViewController *listViewController=[[ListViewController alloc] initWithUrl:URL];
    listViewController.modalPresentationStyle=UIModalPresentationFullScreen;
    [self presentViewController:listViewController animated:true completion:nil];
    
}
- (IBAction)addTextButtonTapped:(id)sender {
    NSLog(@"$$button tapped");
    NSString *newUrl=self.textField.text;
    RssUrlDataModal *newUrlData=[[RssUrlDataModal alloc] initWithURL:newUrl];
    [self.URL addObject:newUrlData];
    NSInteger rowNo=self.URL.count-1;
    NSIndexPath *myIP = [NSIndexPath indexPathForRow: rowNo inSection: 0] ;
    [self.rssUrltableView insertRowsAtIndexPaths:@[myIP] withRowAnimation:UITableViewRowAnimationFade];
}

@end
