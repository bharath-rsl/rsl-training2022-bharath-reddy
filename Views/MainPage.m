//
//  mainPage.m
//  mvc
//
//  Created by Bharath Reddy on 24/11/22.
//

#import "mainPage.h"
#import "ImageView.h"
@implementation MainPage
- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self != nil) {
        _profileViewedStatus = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 290, 25)];
        [_profileViewedStatus setText:@"Profile Viewd status: "];
        
        _firstName= [[UILabel alloc] initWithFrame:CGRectMake(10, 130, 100, 25)];
                [_firstName setText:@"First Name: "];
       
        
        _lastName = [[UILabel alloc] initWithFrame:CGRectMake(10, 160, 100, 25)];
                [_lastName setText:@"Last Name: "];
        
        _age = [[UILabel alloc] initWithFrame:CGRectMake(10, 190, 100, 25)];
                [_age setText:@"Age: "];
        
        _height = [[UILabel alloc] initWithFrame:CGRectMake(10, 220, 100, 25)];
                [_height setText:@"Height(cm): "];
        
         _city = [[UILabel alloc] initWithFrame:CGRectMake(10, 250, 100, 25)];
        [_city setText:@"City: "];
        
        _moreImagesView=[[UIView alloc] initWithFrame:CGRectMake(10,280,400,frame.size.width)];
        _moreImagesView.hidden = YES;
        
        /*ImageView *imageView=[[ImageView alloc] initWithFrame:_moreImagesView.bounds];
        [_moreImagesView addSubview:imageView]; */
        
                
        _enterProfile = [[UIButton alloc] initWithFrame:CGRectMake(10, 650, frame.size.width - 50, 50)];
        
        _enterProfile.backgroundColor = [UIColor systemBlueColor];
        [_enterProfile setTitle:@"Enter Profile" forState:UIControlStateNormal];
        [_enterProfile addTarget:self action:@selector(enterProfile:)forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_profileViewedStatus];
        [self addSubview:_moreImagesView];
        [self addSubview:_firstName];
        [self addSubview:_lastName];
        [self addSubview:_age];
        [self addSubview:_city];
        [self addSubview:_height];
        [self addSubview:_enterProfile];
        
    }
    
    return self;
}
-(void)setFirstNameTest:(NSString *)firstName{
    self.firstName.text=firstName;
}
-(void)setLastNameText:(NSString *)lastName{
    self.lastName.text=lastName;
}
-(void)setAgeText:(NSString *)age{
    self.age.text=age;
}
-(void)setHeightText:(NSString *)height{
    self.height.text=height;
}
-(void)setCityText:(NSString *)city{
    self.city.text=city;
}


-(void)enterProfile:(id)sender{
    NSLog(@"##enter profile");
    self.moreImagesView.hidden=NO;
    [self.delegate fillImages];
    [self.delegate updateProfileViewedStatus];
}
-(void)setImagesForMoreImagesView:(ImageView *)imageView{
    [self.moreImagesView addSubview:imageView];
}
-(void)setProfileViewedLabelText:(NSString *)text{
    self.profileViewedStatus.text=text;
}
@end
