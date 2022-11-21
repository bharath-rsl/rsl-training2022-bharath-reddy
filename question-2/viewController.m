#import "ViewController.h"
#import "secondViewController.h"
@interface ViewController ()

@end

@implementation ViewController


- (IBAction)viewController1ButtonTapped:(id)sender {
    secondViewController *vc2=[[secondViewController alloc] initWithNibName:@"secondViewController" bundle:[NSBundle mainBundle]];
    vc2.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc2 animated:YES completion:nil];
    
}
- (void)viewDidLoad {
    NSLog(@"###### viewDidLoad(story board)");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"###### viewWillAppear(story board)");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"###### viewDidAppear(story board)");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"###### viewDidDisappear(story board)");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"###### viewWillLayoutSubviews(story board)");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"###### viewDidLayoutSubviews(story board)");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    NSLog(@"###### viewWillTransitionToSize(story board)");
    
}
@end
