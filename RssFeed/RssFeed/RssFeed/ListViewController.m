//
//  ListViewController.m
//  RssFeed
//
//  Created by Bharath Reddy on 30/11/22.
//

#import "ListViewController.h"
#import "FeedWebViewController.h"

@interface ListViewController () <NSXMLParserDelegate,UITableViewDelegate,UITableViewDataSource>
@property NSXMLParser *parser;
@property NSMutableArray *feeds;
@property NSMutableDictionary *item;
@property NSMutableString *title_rss;
@property NSMutableString *link;
@property NSString *element;
@property NSString *URL;
@property NSMutableString *desc;
@property (strong, nonatomic)  UITableView *feedListTableView;
@end

@implementation ListViewController

- (instancetype)initWithUrl:(NSString *)URL{
    self=[super init];
    if(self){
        _URL=URL;
    }
    return(self);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.feedListTableView=[[UITableView alloc] initWithFrame:CGRectMake(0,50,400,700) style:UITableViewStylePlain];
    
    [self.view addSubview:self.feedListTableView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(backButtonTapped:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Back" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 750, 160.0, 40.0);
    [self.view addSubview:button];
    
    
    [self.feedListTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    self.feedListTableView.dataSource=self;
    self.feedListTableView.delegate=self;
    
    self.feeds = [[NSMutableArray alloc] init];
    NSURL *url = [NSURL URLWithString:self.URL];
    self.parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    [self.parser setDelegate:self];
    [self.parser setShouldResolveExternalEntities:NO];
    [self.parser parse];
}
-(void)backButtonTapped:(UIButton *)sender{
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    self.element = elementName;
    
    if ([self.element isEqualToString:@"item"]) {
        
        self.item    = [[NSMutableDictionary alloc] init];
        self.title_rss   = [[NSMutableString alloc] init];
        self.link    = [[NSMutableString alloc] init];
        self.desc=[[NSMutableString alloc] init];
        
    }
    
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    if ([self.element isEqualToString:@"title"]) {
        [self.title_rss appendString:string];
    } else if ([self.element isEqualToString:@"link"]) {
        [self.link appendString:string];
    }
    else if([self.element isEqualToString:@"description"]){
        [self.desc appendString:string];
    }
    
}
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"item"]) {
        
        [self.item setObject:self.title_rss forKey:@"title"];
        [self.item setObject:self.link forKey:@"link"];
        [self.item setObject:self.desc forKey:@"description"];
        [self.feeds addObject:[self.item copy]];
        
        
        
    }
    
    
}


- (void)parserDidEndDocument:(NSXMLParser *)parser {
    
    NSLog(@"$$ parsing completed");
    // [self.feedListTableView reloadData];
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"$$rows count fetched %ld",self.feeds.count);
    return self.feeds.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.detailTextLabel.text=[[self.feeds objectAtIndex:indexPath.row] objectForKey:@"description"];
    cell.detailTextLabel.numberOfLines=3;
    cell.detailTextLabel.lineBreakMode=NSLineBreakByWordWrapping;
    
    UIImage *image=[UIImage imageNamed:@"img4"];
    cell.imageView.image=image;
    cell.textLabel.text = [[self.feeds objectAtIndex:indexPath.row] objectForKey: @"title"];
    cell.textLabel.numberOfLines=2;
    cell.textLabel.lineBreakMode=NSLineBreakByWordWrapping;
    NSLog(@"$$ cell created");
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FeedWebViewController *feedWebViewController=[[FeedWebViewController alloc] initWithUrl:self.feeds[indexPath.row][@"link"]];
    feedWebViewController.modalPresentationStyle=UIModalPresentationFullScreen;
    [self presentViewController:feedWebViewController animated:true completion:nil];
}

@end
