//
//  Person.m
//  mvc
//
//  Created by Bharath Reddy on 24/11/22.
//

#import "Person.h"

@implementation Person
-(id)initWithDetails:(NSString *)firstName lastName:(NSString *)lastName
                 age:(NSInteger)age city:(NSString *)city  height:(NSInteger)height profileImages:(NSMutableArray<UIImage *> *)profileImages profileViewd:(BOOL)profileViewed{
    
    self=[super init];
    if(self){
        self.firstName=firstName;
        self.lastName=lastName;
        self.age=age;
        self.city=city;
        self.height=height;
        self.profileImages=profileImages;
        self.profileViewd=profileViewed;
        
        
    }
    return(self);
}


@end
