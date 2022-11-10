#import "Person.h"
@implementation Person:NSObject
@synthesize firstName,lastName,age;
-(id) initWithPersonDetails: (NSString *) fn andLastName: (NSString*) ln andAge: (NSNumber*) a{
   
   self=[super init];
   if(self){
    firstName = fn;
    lastName = ln;
    age = a;
}
    return self;
}
-(void) printPersonDetail{
    NSLog(@"your name is %@ %@ and age is %@",firstName,lastName,age);
}
@end

