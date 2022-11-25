//
//  ViewController.m
//  mvc
//
//  Created by Bharath Reddy on 24/11/22.
//

#import "ViewController.h"
#import "ImageView.h"
#import "Person.h"
#import "mainPage.h"
@interface ViewController () <personImageViewDelegate>
@property(nonatomic, strong) Person *personModal;
@property(nonatomic, strong) ImageView *personProfileView;
@property(nonatomic, strong) MainPage *personMainPageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self dataSetup];
    [self viewSetup];
    
    
}
- (void)dataSetup{
    NSMutableArray<UIImage *> *profileImages=[[NSMutableArray alloc] init];
    UIImage *img1 = [UIImage imageNamed:@"img1"];
    UIImage *img2 = [UIImage imageNamed:@"img2"];
    UIImage *img3 = [UIImage imageNamed:@"img3"];
    UIImage *img4 = [UIImage imageNamed:@"img4"];
    UIImage *img5 = [UIImage imageNamed:@"img5"];
    NSLog(@"########%@...%@...%@...%@...%@",img1,img2,img3,img4,img5);

   [profileImages addObjectsFromArray:@[img1,img3,img4,img5,img1]];
    self.personModal=[[Person alloc] initWithDetails:@"bharath" lastName:@"kumar" age:(23) city:@"vizag" height:183 profileImages:profileImages profileViewd:FALSE];
    
    
}
-(void)viewSetup{
    self.personMainPageView = [[MainPage alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.personMainPageView];
    
    [self.personMainPageView setFirstNameTest:self.personModal.firstName];
    [self.personMainPageView setLastNameText:self.personModal.lastName];
    [self.personMainPageView setCityText:self.personModal.city];
    [self.personMainPageView setProfileViewedLabelText:@"ProfileViewed:False"];
    [self.personMainPageView setAgeText:[[NSString alloc] initWithFormat:@"%ld",self.personModal.age]];
    [self.personMainPageView setHeightText:[[NSString alloc] initWithFormat:@"%ld",self.personModal.height]];

    self.personMainPageView.delegate=self;
}

-(void)fillImages{
    NSLog(@"##fillimags start");
    ImageView *imageView=[[ImageView alloc] initWithFrame:self.personMainPageView.moreImagesView.bounds];
    //imageView.backgroundColor=UIColor.grayColor;
    NSMutableArray<UIImage *> *images=self.personModal.profileImages;
    NSInteger imagesCount=images.count;
    if(imagesCount>4){
        NSString *number = [[NSString alloc] initWithFormat:@"%ld", imagesCount-4];
        NSMutableString* text=[[NSMutableString alloc] initWithString:number];
        [text appendString:@" more images..."];
        [imageView setSomeMoreLabelText:text];
        NSLog(@"###some more text label");
    }
    [self.personMainPageView.moreImagesView addSubview:imageView];
    for(int i=0;i<4&&i<imagesCount;i++){
        NSLog(@"$setting images");
        [imageView setImage1:[self.personModal.profileImages objectAtIndex:i]];
        i++;
        if(i<4&&i<imagesCount)[imageView setImage2:[self.personModal.profileImages objectAtIndex:i]];
        i++;
        if(i<4&&i<imagesCount)[imageView setImage3:[self.personModal.profileImages objectAtIndex:i]];
        i++;
        if(i<4&&imagesCount)[imageView setImage4:[self.personModal.profileImages objectAtIndex:i]];
        i++;
    }
    
    NSLog(@"fill image end");
}
-(void)updateProfileViewedStatus{
    [self.personMainPageView setProfileViewedLabelText:@"ProfileViewed status : True"];
}
@end
