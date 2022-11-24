//
//  Professor.m
//  dp2
//
//  Created by Bharath Reddy on 23/11/22.
//

#import "Professor.h"

@implementation Professor
-(id)initWithDetails:(NSString *)name professorID:(NSInteger)professorID subject:(NSString *)subject{
    self=[super init];
    if(self){
        self.name=name;
        self.pID=professorID;
        self.subject=subject;
    }
    return(self);
}@end
