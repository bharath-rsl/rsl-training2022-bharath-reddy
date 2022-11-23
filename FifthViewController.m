//
//  FifthViewController.m
//  Uinavigation
//
//  Created by Bharath Reddy on 22/11/22.
//

#import "FifthViewController.h"

@interface FifthViewController ()

@end

@implementation FifthViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"VC5 Screen";
    UIBarButtonItem* backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain
    target:self action:@selector(onTapBack:)];
  
    self.navigationItem.leftBarButtonItem = backBtn;
    self.navigationController.navigationBar.backgroundColor=UIColor.yellowColor;
    UIBarButtonItem* doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(onTapDone:)];
    self.navigationItem.rightBarButtonItem = doneBtn;
    
    UIButton * goToVc1Button=[[UIButton alloc] initWithFrame:CGRectMake(100,100, 100,100)];
    [goToVc1Button addTarget:self action:@selector(gotoVc1ButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [goToVc1Button setTitle:@"Go to VC1" forState:UIControlStateNormal];
    [self.view addSubview:goToVc1Button];
    goToVc1Button.backgroundColor=UIColor.blueColor;
    
    UIButton * goToVc3Button=[[UIButton alloc] initWithFrame:CGRectMake(100,250, 100,100)];
    [goToVc3Button addTarget:self action:@selector(gotoVc3ButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [goToVc3Button setTitle:@"Go to VC3" forState:UIControlStateNormal];
    [self.view addSubview:goToVc3Button];
    goToVc3Button.backgroundColor=UIColor.blueColor;
    
}

-(void)onTapBack:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)onTapDone:(id)sender{
    
    [self.navigationController popToRootViewControllerAnimated:TRUE];
    [self.navigationController.topViewController dismissViewControllerAnimated:YES completion:nil];
}
-(void)gotoVc1ButtonClicked:(id)sender{
    // Create view controller to be shown
    NSMutableArray *navigationArray = [[NSMutableArray alloc] initWithArray:self.navigationController.viewControllers];

    NSInteger count=navigationArray.count;
    while(count>1){
        [navigationArray removeLastObject];
        count--;
    }
    self.navigationController.viewControllers = navigationArray;
}
-(void)gotoVc3ButtonClicked:(id)sender{
    NSMutableArray *navigationArray = [[NSMutableArray alloc] initWithArray: self.navigationController.viewControllers];

    NSInteger count=navigationArray.count;
    while(count>3){
        [navigationArray removeLastObject];
        count--;
    }
    self.navigationController.viewControllers = navigationArray;
}

@end
