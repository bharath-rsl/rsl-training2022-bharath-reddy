//
//  ViewController.m
//  objectivecDemo
//
//  Created by Bharath Reddy on 14/11/22.
//

#import "ViewController.h"
#import "CustomClass.h"

@interface ViewController ()

@property UIButton * button;
@property UILabel *countLabel;
@property UIImageView *uiImageView ;
@property UISwitch *onoff;
@property UISlider *slider;
@end

@implementation ViewController
@synthesize button,countLabel,uiImageView,onoff,slider;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // CGRect viewRect=CGRectMake(10, 10,10,100);
    //CustomClass * myView=[[CustomClass alloc] initWithFrame:viewRect];
    
    uiImageView =[[UIImageView alloc] initWithFrame:CGRectMake(100,50,150,150)];
    uiImageView.image=[UIImage imageNamed:@"rsl.jpeg"];
    uiImageView.alpha = 1;
    
    countLabel=[[UILabel alloc] initWithFrame:CGRectMake(5,300,400,200)];
    countLabel.text=@"0";
    countLabel.backgroundColor=[UIColor brownColor];
    countLabel.textColor=[UIColor blackColor];
    countLabel.textAlignment=NSTextAlignmentCenter;
    countLabel.font=[UIFont systemFontOfSize:30 weight:UIFontWeightBold];
    
    button=[[UIButton alloc] initWithFrame:CGRectMake(0, 670,400, 50)];
    [button setTitle:@"Increment" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor systemBlueColor];
    [button addTarget:self action:@selector(buttonClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    
    onoff = [[UISwitch alloc] initWithFrame:CGRectMake(150.0f, 265.0f, 250.0f, 25.0f)];
    [onoff setOn:YES];
    [onoff addTarget:self action:@selector(switchIsChanged:) forControlEvents:UIControlEventValueChanged];
    
    slider = [[UISlider alloc] initWithFrame:CGRectMake(55.0f, 230.0f, 250.0f, 25.0f)];
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [slider setBackgroundColor:[UIColor blackColor]];
    slider.minimumValue = 0.0;
    slider.maximumValue = 1.0;
    slider.continuous = YES;
    slider.value = 1.0;
    
    UITapGestureRecognizer *tapRecognizer=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tapRecognizer];
    
    
    [self.view addSubview:slider];
    [self.view addSubview:onoff];
    [self.view addSubview:uiImageView];
    [self.view addSubview:countLabel];
    [self.view addSubview:button];
    NSLog(@"###viewDidLoad");
}

- (void)sliderAction:(UISlider *)sender {
    NSLog(@"Slider Value %f", sender.value);
    uiImageView.alpha=sender.value;
}

- (void) switchIsChanged:(UISwitch *)sender{
    
    if ([sender isOn]){
        NSLog(@"turned on.");
        button.enabled=YES;
    } else {
        NSLog(@"turned off.");
        button.enabled=NO;
    }
    
}
- (void)buttonClicked:(id)sender {
    NSLog(@"button clicked");
    
    NSString * currentValue=countLabel.text;
    NSInteger currentIntValue=[currentValue intValue];
    currentIntValue += 1;
    NSString* myNewString = [NSString stringWithFormat:@"%ld", currentIntValue];
    countLabel.text=myNewString;
    [self changeColor:currentIntValue];
    
}
-(void)handleTap:(UITapGestureRecognizer *)tap{
    
    if(tap.view == self.view){
        NSString * currentValue=countLabel.text;
        NSInteger currentIntValue=[currentValue intValue];
        currentIntValue -= 1;
        NSString* myNewString = [NSString stringWithFormat:@"%ld", currentIntValue];
        countLabel.text=myNewString;
        [self changeColor:currentIntValue];
    }
    
}
-(void)changeColor:(NSInteger)labelValue{
    if(labelValue>0)
        self.view.backgroundColor=[UIColor greenColor];
    else if(labelValue<0)
        self.view.backgroundColor=[UIColor redColor];
    else if(labelValue==0)
        self.view.backgroundColor=[UIColor whiteColor];
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
