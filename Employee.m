#import "Employee.h"
#import "Person.h"
@implementation Employee:Person
-(id) initWithEmpDetails: (Organization *) org employeeId: (NSNumber*)empId firstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSNumber*)age{
   
  self=[super initWithPersonDetails:firstName andLastName:lastName andAge:age];
   if(self){
    organization = org;
    employeeId = empId;
    }
    return self;
}
-(NSString*) getFullName{
    return [firstName stringByAppendingString: lastName];
}
-(void) employeeDetail{
    NSLog(@"Organization name is %@ and employee Id is %@",organization.organizationName,employeeId);
}
-(void) updateOrganizationDetail:( Organization *)newOrg{
    organization=newOrg;
}

@end
