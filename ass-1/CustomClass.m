//
//  CustomClass.m
//  objectivecDemo
//
//  Created by Bharath Reddy on 16/11/22.
//

#import "CustomClass.h"

@implementation CustomClass
@synthesize button,countLabel,uiImageView,onoff,slider;
-(instancetype)initWithFrame:(CGRect)fr{
    self=[super initWithFrame:fr];
    if(self){
        [self customInit];
    }
    return(self);
}
-(void)customInit{
    uiImageView =[[UIImageView alloc] initWithFrame:CGRectMake(100,50,150,150)];
    uiImageView.image=[UIImage imageNamed:@"rsl.jpeg"];
    uiImageView.alpha = 1;
    //uiImageView.userInteractionEnabled=NO;
    
    countLabel=[[UILabel alloc] initWithFrame:CGRectMake(5,300,400,200)];
    countLabel.text=@"0";
    countLabel.backgroundColor=[UIColor brownColor];
    countLabel.textColor=[UIColor blackColor];
    countLabel.textAlignment=NSTextAlignmentCenter;
    countLabel.font=[UIFont systemFontOfSize:30 weight:UIFontWeightBold];
    //countLabel.userInteractionEnabled=NO;
    
    button=[[UIButton alloc] initWithFrame:CGRectMake(0, 670,400, 50)];
    [button setTitle:@"Increment" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor systemBlueColor];
    [button addTarget:self action:@selector(buttonClicked:)
     forControlEvents:UIControlEventTouchUpInside];    //[self addSubview:img];
    //button.userInteractionEnabled=NO;
    
    onoff = [[UISwitch alloc] initWithFrame:CGRectMake(150.0f, 265.0f, 250.0f, 25.0f)];
    [onoff setOn:YES];
    [onoff addTarget:self action:@selector(switchIsChanged:) forControlEvents:UIControlEventValueChanged];
    //onoff.userInteractionEnabled=NO;
    
    slider = [[UISlider alloc] initWithFrame:CGRectMake(55.0f, 230.0f, 250.0f, 25.0f)];
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [slider setBackgroundColor:[UIColor blackColor]];
    slider.minimumValue = 0.0;
    slider.maximumValue = 1.0;
    slider.continuous = YES;
    slider.value = 1.0;
    //slider.gestureRecognizers=NULL;
    UITapGestureRecognizer *tapRecognizer=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self addGestureRecognizer:tapRecognizer];
    
    
    [self addSubview:slider];
    [self addSubview:onoff];
    [self addSubview:uiImageView];
    [self addSubview:countLabel];
    [self addSubview:button];
    
    
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
    
    
    NSString * currentValue=countLabel.text;
    NSInteger currentIntValue=[currentValue intValue];
    currentIntValue -= 1;
    NSString* myNewString = [NSString stringWithFormat:@"%ld", currentIntValue];
    countLabel.text=myNewString;
    [self changeColor:currentIntValue];
    
    
}
-(void)changeColor:(NSInteger)labelValue{
    if(labelValue>0)
        self.backgroundColor=[UIColor greenColor];
    else if(labelValue<0)
        self.backgroundColor=[UIColor redColor];
    else if(labelValue==0)
        self.backgroundColor=[UIColor whiteColor];
}




@end
