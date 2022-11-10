#import "Organization.h"
#import "Person.h"
@interface Employee: Person{
    Organization *organization;
    NSNumber *employeeId ;
}
//@property(readonly) NSString *fullName;
-(NSString*) getFullName;
@property(readonly,retain) Organization *org;
@property(readonly,retain) NSNumber *employeeId;
-(id) initWithEmpDetails: (Organization *) org employeeId: (NSNumber*)empId firstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSNumber*)age;
-(void) employeeDetail;
-(void) updateOrganizationDetail:( Organization *)newOrg;
@end