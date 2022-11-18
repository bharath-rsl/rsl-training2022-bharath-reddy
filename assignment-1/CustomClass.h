//
//  CustomClass.h
//  objectivecDemo
//
//  Created by Bharath Reddy on 16/11/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomClass : UIView

@property UIButton * button;
@property UILabel *countLabel;
@property UIImageView *uiImageView ;
@property UISwitch *onoff;
@property UISlider *slider;
- (void)buttonClicked:(id)sender;
- (void) switchIsChanged:(UISwitch *)sender;
- (void)sliderAction:(id)sender;
@end

NS_ASSUME_NONNULL_END
