
#import "SecondViewController.h"
#import "ProgramaticallyCreatedViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController



- (IBAction)secondViewControllerButtontapped:(id)sender {
    ProgramaticallyCreatedViewController *pvc = [[ProgramaticallyCreatedViewController alloc] init];
    pvc.modalPresentationStyle = UIModalPresentationFullScreen;
    pvc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:pvc animated:YES completion:nil];
}
- (IBAction)goBackButtonClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad {
    NSLog(@"###### viewDidLoad(xib)");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"###### viewWillAppear(xib)");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"###### viewDidAppear(xib)");
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"###View did disappear (xib)");
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"###### viewDidDisappear(xib)");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"###### viewWillLayoutSubviews(xib)");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"###### viewDidLayoutSubviews(xib)");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    NSLog(@"###### viewWillTransitionToSize(xib)");
    
}


@end
