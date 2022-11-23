//
//  ThirdViewController.m
//  Uinavigation
//
//  Created by Bharath Reddy on 22/11/22.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"VC3 Screen";
    self.navigationController.navigationBar.backgroundColor=UIColor.greenColor;
    
    
    UIBarButtonItem* backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain
    target:self action:@selector(onTapBack:)];
    self.navigationItem.leftBarButtonItem = backBtn;
    
    UIButton * button=[[UIButton alloc] initWithFrame:CGRectMake(100,100, 100,100)];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Enter VC4" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.backgroundColor=UIColor.blueColor;
}

-(void)onTapBack:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)buttonClicked:(id)sender{
    // Create view controller to be shown
       FourthViewController *fourthViewController = [[FourthViewController alloc] init];

       // Push the controller in the navigation stack
    [self.navigationController pushViewController:fourthViewController animated:YES];
    
}
@end
