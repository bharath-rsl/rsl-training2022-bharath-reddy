
#import "Organization.h"
@implementation Organization:NSObject
@synthesize organizationName,organizationId,employeeList;
-(id) initWithOrgDetails: (NSString *) oName andOrgId: (NSString*) oID {
   self=[super init];
   if(self){
    self.organizationName = oName;
    self.organizationId = oID;
    self.employeeList=[NSMutableArray array];
    
	}
    return self;
}
-(void) printOrganizationDetail{
    NSLog(@"organization name is %@ and organization id is %@",organizationName,organizationId);
}
-(void) addEmployee: (Employee *)emp{
    [employeeList addObject:emp];
}


@end