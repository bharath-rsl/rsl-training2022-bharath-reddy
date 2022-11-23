//
//  ViewController.m
//  Uinavigation
//
//  Created by Bharath Reddy on 22/11/22.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}
- (IBAction)enterUInavigationControllerButtonTapped:(id)sender {
    FirstViewController *firstViewController = [[FirstViewController alloc] init];
       UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];

    firstViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
       [self presentViewController:navigationController animated:YES completion:nil];}


@end
