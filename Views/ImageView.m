//
//  ImageView.m
//  mvc
//
//  Created by Bharath Reddy on 24/11/22.
//

#import "ImageView.h"

@implementation ImageView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self != nil) {
        _personImageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 150)];
        _personImageView1.layer.masksToBounds = YES;
        _personImageView1.layer.cornerRadius = self.frame.size.height/2;
        [self addSubview:_personImageView1];
        
        _personImageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(205, 0, 200, 150)];
        _personImageView2.layer.masksToBounds = YES;
        _personImageView2.layer.cornerRadius = self.frame.size.height/2;
        [self addSubview:_personImageView2];
        
        _personImageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 155, 200, 150)];
        _personImageView3.layer.masksToBounds = YES;
        _personImageView3.layer.cornerRadius = self.frame.size.height/2;
         [self addSubview:_personImageView3];
        
        _personImageView4 = [[UIImageView alloc] initWithFrame:CGRectMake(205, 155, 200, 150)];
        _personImageView4.layer.masksToBounds = YES;
        _personImageView4.layer.cornerRadius = self.frame.size.height/2;
         [self addSubview:_personImageView4];
        
        _someMoreLabel= [[UILabel alloc] initWithFrame:CGRectMake(0, 290, 150, 100)];
                [_someMoreLabel setText:@""];
        [self addSubview:_someMoreLabel];
        
    }

    return self;
}
-(void)setImage1:(UIImage *)image{
    NSLog(@"##imag1");
    self.personImageView1.image=image;
}
-(void)setImage2:(UIImage *)image{
    self.personImageView2.image=image;
}
-(void)setImage3:(UIImage *)image{
    self.personImageView3.image=image;
}
-(void)setImage4:(UIImage *)image{
    self.personImageView4.image=image;
}
-(void)setSomeMoreLabelText:(NSString *)text{
    self.someMoreLabel.text=text;
}


@end
