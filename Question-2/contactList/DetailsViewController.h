//
//  DetailsViewController.h
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import <UIKit/UIKit.h>
#import "ContactDataModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
-(id)initWithDetails:(ContactDataModel *)contact;
@end

NS_ASSUME_NONNULL_END
