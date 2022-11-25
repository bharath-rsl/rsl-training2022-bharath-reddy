//
//  mainPage.h
//  mvc
//
//  Created by Bharath Reddy on 24/11/22.
//

#import <UIKit/UIKit.h>
#import "ImageView.h"
NS_ASSUME_NONNULL_BEGIN
@protocol personImageViewDelegate
- (void) fillImages;
-(void) updateProfileViewedStatus;
@end


@interface MainPage : UIView
@property(nonatomic, weak) id<personImageViewDelegate> delegate;

@property (nonatomic,strong) UILabel *firstName;
@property (nonatomic,strong) UILabel *lastName;
@property (nonatomic,strong) UILabel *age;
@property (nonatomic,strong) UILabel *city;
@property (nonatomic,strong) UILabel *height;
@property (nonatomic,strong) UILabel *profileViewedStatus;
@property (nonatomic,strong) UIButton *enterProfile;
@property (nonatomic,strong) UIView *moreImagesView;
- (instancetype) initWithFrame:(CGRect)frame;
-(void)setFirstNameTest:(NSString *)firstName;
-(void)setLastNameText:(NSString *)lastName;
-(void)setAgeText:(NSString *)age;
-(void)setHeightText:(NSString *)height;
-(void)setCityText:(NSString *)city;
-(void)enterProfile:(id)sender;
-(void)setImagesForMoreImagesView:(ImageView *)imageView;
-(void)setProfileViewedLabelText:(NSString *)text;
@end

NS_ASSUME_NONNULL_END
