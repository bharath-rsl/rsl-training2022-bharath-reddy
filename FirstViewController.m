//
//  FirstViewController.m
//  Uinavigation
//
//  Created by Bharath Reddy on 22/11/22.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"VC1";
    self.navigationController.navigationBar.backgroundColor=UIColor.orangeColor;
    UIBarButtonItem* backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain
    target:self action:@selector(onTapBack:)];
      
    self.navigationItem.leftBarButtonItem = backBtn;
    
    
    
    UIButton * button=[[UIButton alloc] initWithFrame:CGRectMake(100,100, 100,100)];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Enter VC2" forState:UIControlStateNormal];
    button.backgroundColor=UIColor.blueColor;
    [self.view addSubview:button];
    
    
    
    
}
-(void)onTapBack:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];}

-(void)buttonClicked:(id)sender{
    // Create view controller to be shown
       SecondViewController *secondViewController = [[SecondViewController alloc] init];

       // Push the controller in the navigation stack
    [self.navigationController pushViewController:secondViewController animated:YES];
    
}

@end
