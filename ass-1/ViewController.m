//
//  ViewController.m
//  objectivecDemo
//
//  Created by Bharath Reddy on 14/11/22.
//

#import "ViewController.h"
#import "CustomClass.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CustomClass * myView=[[CustomClass alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:myView];
    NSLog(@"###viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //NSLog(@"###viewwill appear");
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    // NSLog(@"###viewDisLoad");
    
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //NSLog(@"###viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)anima{
    [super viewDidDisappear:anima];
    //NSLog(@"###ViewDidDisappear");
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // NSLog(@"###didReceiveMemoryWarning");
}
@end
