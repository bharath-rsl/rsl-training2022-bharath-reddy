//
//  SecondViewController.m
//  Uinavigation
//
//  Created by Bharath Reddy on 22/11/22.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"VC2 Screen";
    self.navigationController.navigationBar.backgroundColor=UIColor.brownColor;
    UIBarButtonItem* backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain
    target:self action:@selector(onTapBack:)];
    self.navigationItem.leftBarButtonItem = backBtn;
    UIButton * button=[[UIButton alloc] initWithFrame:CGRectMake(100,100, 100,100)];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Enter VC3" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.backgroundColor=UIColor.blueColor;
}
-(void)onTapBack:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)buttonClicked:(id)sender{
    // Create view controller to be shown
       ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];

       // Push the controller in the navigation stack
    [self.navigationController pushViewController:thirdViewController animated:YES];
    
}
@end
