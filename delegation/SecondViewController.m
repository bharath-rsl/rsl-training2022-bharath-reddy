//
//  SecondViewController.m
//  dp1
//
//  Created by Bharath Reddy on 23/11/22.
//

#import "SecondViewController.h"



@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=UIColor.darkGrayColor;
    UIButton *blueButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [blueButton addTarget:self
               action:@selector(blueSelected:)
     forControlEvents:UIControlEventTouchUpInside];
    [blueButton setTitle:@"BLUE" forState:UIControlStateNormal];
    blueButton.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:blueButton];
    
    UIButton *redButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [redButton addTarget:self
               action:@selector(redSelected:)
     forControlEvents:UIControlEventTouchUpInside];
    [redButton setTitle:@"RED" forState:UIControlStateNormal];
    redButton.frame = CGRectMake(80.0, 270, 160.0, 40.0);
    [self.view addSubview:redButton];
    
    UIButton *greenButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [greenButton addTarget:self
               action:@selector(greenSelected:)
     forControlEvents:UIControlEventTouchUpInside];
    [greenButton setTitle:@"GREEN" forState:UIControlStateNormal];
    greenButton.frame = CGRectMake(80.0, 350, 160.0, 40.0);
    [self.view addSubview:greenButton];
    


    
    
    
}
-(void)redSelected:(id)sender{
    [self.delegate changeFirstViewControllerColor:UIColor.redColor];
    [self dismissViewControllerAnimated:TRUE completion:nil];
}
-(void)greenSelected:(id)sender{
    [self.delegate changeFirstViewControllerColor:UIColor.greenColor];
    [self dismissViewControllerAnimated:TRUE completion:nil];
}
-(void)blueSelected:(id)sender{
    [self.delegate changeFirstViewControllerColor:UIColor.blueColor];
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
