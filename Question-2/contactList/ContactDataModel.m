//
//  ContactDataModel.m
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//
#import "UIKit/UIKit.h"
#import "ContactDataModel.h"

@implementation ContactDataModel

-(id)initWithContactDetails:(NSString *)contactName contactImage:(UIImage *)image email:(NSString *)email phoneNo:(NSInteger)phoneNo{
    self=[super init];
    if(self){
        _contactName=contactName;
        _contactImage=image;
        _email=email;
        _phoneNo=phoneNo;
    }
    return(self);
}
@end
