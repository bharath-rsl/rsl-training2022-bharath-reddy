//
//  Student.m
//  dp2
//
//  Created by Bharath Reddy on 23/11/22.
//

#import "Student.h"
#import "College.h"
#import "Professor.h"
@implementation Student

-(id)initWithDetails:(NSString *)name year:(NSInteger)year studentID:(NSInteger)sID branch:(NSString *)branch
    grade:(NSString *)grade{
    self=[super init];
    if(self){
        self.name=name;
        self.year=year;
        self.sID=sID;
        self.branch=branch;
        self.grade=grade;
    }
    return(self);
}

-(void)viewProfessors{
    College *college=[College sharedInstance];
    NSMutableArray<Professor *> * professors=college.Professors;
    for(Professor * tempObject in professors){
        NSLog(@"%@ professor is %@",tempObject.subject,tempObject.name);
    }
    
}
@end
