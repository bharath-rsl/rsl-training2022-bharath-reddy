#import <Foundation/Foundation.h>
@class Employee;
@interface Organization:NSObject{
    NSString *organizationName;
    NSString *organizationId;
    NSMutableArray *employeeList;
}

@property(retain)  NSString *organizationName;
@property(retain)  NSString *organizationId;
@property(retain)     NSMutableArray *employeeList;
-(id) initWithOrgDetails: (NSString *) on andOrgId: (NSString*) oi;
-(void) printOrganizationDetail;
@end