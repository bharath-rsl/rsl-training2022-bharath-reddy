//
//  College.m
//  dp2
//
//  Created by Bharath Reddy on 23/11/22.
//

#import "College.h"

@implementation College


+(instancetype)sharedInstance {
static College *instance = nil;
static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
instance = [[self alloc] init];
});
return instance;
}

-(id)init{
    self=[super init];
    if(self){
    self.students=[[NSMutableArray alloc]init];
    self.Professors=[[NSMutableArray alloc]init];
    }
    return(self);
    
}

@end
