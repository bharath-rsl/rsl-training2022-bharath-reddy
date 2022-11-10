 #import <Foundation/Foundation.h>
 #import "Organization.h"
@interface Person:NSObject{
    NSString *firstName;
    NSString *lastName;
    NSNumber *age;
}
@property NSString *firstName;
@property NSString *lastName;
@property NSNumber *age;
-(id) initWithPersonDetails: (NSString *) fn andLastName: (NSString*) ln andAge: (NSNumber*) a;
-(void) printPersonDetail;
@end

