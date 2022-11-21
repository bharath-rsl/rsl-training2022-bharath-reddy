
#import "ProgramaticallyCreatedViewController.h"

@interface ProgramaticallyCreatedViewController ()

@end

@implementation ProgramaticallyCreatedViewController


- (void)loadView {
    NSLog(@"###### loadView");
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Programatical ViewController";
    label.frame = CGRectMake(50, 100, 300, 30);
    [view addSubview:label];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 300, 50)];
    [button setTitle:@"Dismiss" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(dismissAction) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:button];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    UIView *rectView = [[UIView alloc] initWithFrame:CGRectMake(50, 500, 300, 300)];
    rectView.backgroundColor = [UIColor redColor];
    [view addSubview:rectView];
    
    self.view = view;
}
-(void)dismissAction {
    NSLog(@"### dismissAction(programatically created view controller)");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    NSLog(@"### viewDidLoad (programatically created view controller)");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"### viewWillAppear((programatically created view controller)");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"### viewDidAppear((programatically created view controller)");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"### viewDidDisappear((programatically created view controller)");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"### viewWillLayoutSubviews((programatically created view controller)");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"### viewDidLayoutSubviews((programatically created view controller)");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    NSLog(@"### viewWillTransitionToSiz(programatically created view controller)");
    
}

@end