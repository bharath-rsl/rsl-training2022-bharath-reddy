#import "ViewController.h"

@interface ViewController ()
@property    NSArray* marrOn;
@property NSArray* marrOff;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view.
    // Create a view controller which will be added in the container view.
    UIViewController *childController = [[UIViewController alloc] init];
    
    [self addChildViewController:childController];
    UIView *childView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 250, 500)];
    childView.backgroundColor = UIColor.yellowColor;
    childController.view = childView;
    UILabel *childLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 60, 50, 30)];
    childLabel.text = @"Blue";
    childLabel.textAlignment = NSTextAlignmentCenter;
    [childView addSubview:childLabel];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setTitle:@"Button" forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 200, 100, 40.0);
    button.backgroundColor=[UIColor blackColor];
    [childView addSubview:button];
    
    UITextView *textView=[[UITextView alloc] initWithFrame:CGRectMake(50,380, 100, 40) ];
    
    [childView addSubview:textView];
    
    
    [self.view addSubview:childController.view];
    
    
    // Call didMoveToParentViewController passing the reference to parent view controller.
    [childController didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
    
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}

@end
