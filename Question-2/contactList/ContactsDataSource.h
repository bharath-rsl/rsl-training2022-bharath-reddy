//
//  ContactsDataSource.h
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import <Foundation/Foundation.h>
#import "ContactDataModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface ContactsDataSource : NSObject
- (instancetype)initWithContacts:(NSArray<ContactDataModel *> *)contacts;
@end

NS_ASSUME_NONNULL_END
