//
//  FourthViewController.m
//  Uinavigation
//
//  Created by Bharath Reddy on 22/11/22.
//

#import "FourthViewController.h"
#import "FifthViewController.h"
@interface FourthViewController ()

@end

@implementation FourthViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"VC4";
    self.navigationController.navigationBar.backgroundColor=UIColor.redColor;
    
    UIBarButtonItem* backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain
    target:self action:@selector(onTapBack:)];
    self.navigationItem.leftBarButtonItem = backBtn;

    UIButton * button=[[UIButton alloc] initWithFrame:CGRectMake(100,100, 100,100)];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Enter VC5" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.backgroundColor=UIColor.blueColor;
}
-(void)onTapBack:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
}-(void)buttonClicked:(id)sender{
    // Create view controller to be shown
       FifthViewController *fifthViewController = [[FifthViewController alloc] init];

       // Push the controller in the navigation stack
    [self.navigationController pushViewController:fifthViewController animated:YES];
    
}

@end
