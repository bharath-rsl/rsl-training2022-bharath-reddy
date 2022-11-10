#import <Foundation/Foundation.h>
#import "Person.h"
#import "Organization.h"
#import "Employee.h"
int main(void){
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    //Person *bharath = [[Person alloc]initWithFirstName:@"bharath" andLastName:@"kumar" andAge: @25];
    
    Organization *organization = [[Organization alloc]initWithOrgDetails:@"rsl"  andOrgId: @"RS1"];
     Employee *employee = [[Employee alloc] initWithEmpDetails:organization employeeId:@123 firstName:@"bharath" lastName:@"kumar" age:@23];
   // [bharath printPersonDetail];
    [employee employeeDetail];
    [organization printOrganizationDetail];
  
    [organization addEmployee : employee];
    NSLog(@"employee count sofar: %ld",[organization.employeeList count]);
    NSLog(@"Fullname: %@",[employee getFullName]);
    Organization *newOrg = [[Organization alloc]initWithOrgDetails:@"tcs"  andOrgId: @"Tc1"];
    [employee updateOrganizationDetail:newOrg];
    NSLog(@"Organization details after updation:");
    [employee employeeDetail];
    [pool release];
    return 0;
}