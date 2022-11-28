//
//  ContactsViewDelegate.h
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "DetailsViewController.h"
#import "ContactDataModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol  showingDetailsDelegate 

-(void)showDetails:(DetailsViewController *)detailsViewController;

@end
@interface ContactsViewDelegate :NSObject
@property (nonatomic,weak) id<showingDetailsDelegate> delegate;
- (instancetype)initWithContacts:(NSArray<ContactDataModel *> *)contacts;
@end

NS_ASSUME_NONNULL_END
