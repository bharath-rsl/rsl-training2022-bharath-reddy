//
//  ImageView.h
//  mvc
//
//  Created by Bharath Reddy on 24/11/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageView : UIView

@property (nonatomic, strong) UIImageView *personImageView1;
@property (nonatomic, strong) UIImageView *personImageView2;
@property (nonatomic, strong) UIImageView *personImageView3;
@property (nonatomic, strong) UIImageView *personImageView4;
@property (nonatomic, strong) UILabel *someMoreLabel;
-(void)setImage1:(UIImage *)image;
-(void)setImage2:(UIImage *)image;
-(void)setImage3:(UIImage *)image;
-(void)setImage4:(UIImage *)image;
-(void)setSomeMoreLabelText:(NSString *)text;
@end

NS_ASSUME_NONNULL_END
