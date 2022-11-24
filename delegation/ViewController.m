//
//  ViewController.m
//  dp1
//
//  Created by Bharath Reddy on 23/11/22.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)chooseColorButtonTapped:(id)sender {
    
    SecondViewController *secondViewController=[[SecondViewController alloc] init];
    secondViewController.modalPresentationStyle=UIModalPresentationFullScreen;
    secondViewController.delegate=self;
    [self presentViewController:secondViewController animated:(TRUE) completion:nil];
    
    
}
-(void)changeFirstViewControllerColor:(UIColor *)color{
    self.view.backgroundColor=color;
}

@end
