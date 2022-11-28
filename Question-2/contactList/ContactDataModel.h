//
//  ContactDataModel.h
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//
#import "UIKit/UIKit.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContactDataModel : NSObject

@property (nonatomic)NSString *contactName;
@property( nonatomic)UIImage *contactImage;
@property (nonatomic) NSString *email;
@property (nonatomic) NSInteger phoneNo;

-(id)initWithContactDetails:(NSString *)contactName contactImage:(UIImage *)image email:(NSString *)email phoneNo:(NSInteger)phoneNo;
@end

NS_ASSUME_NONNULL_END
