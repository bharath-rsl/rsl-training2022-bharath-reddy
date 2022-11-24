//
//  ViewController.m
//  dp2
//
//  Created by Bharath Reddy on 23/11/22.
//

#import "ViewController.h"
#import "College.h"
#import "Student.h"
#import "Professor.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    College *college=[College sharedInstance];
    Student *bharath=[[Student alloc] initWithDetails:@"bharath" year:1 studentID:23 branch:@"cse" grade:@"B"];
    Student *vinay=[[Student alloc] initWithDetails:@"Vinay" year:1 studentID:33 branch:@"cse" grade:@"A"];
    
    Professor *professor1=[[Professor alloc] initWithDetails:@"maths prof" professorID:123 subject:@"maths"];
    Professor *professor2=[[Professor alloc] initWithDetails:@"science prof" professorID:244 subject:@"science"];
    
    //adding data to college
    [college.students addObjectsFromArray:@[bharath,vinay]];
    [college.Professors addObjectsFromArray:@[professor1,professor2]];
    
    //student accessing professor details
    [bharath viewProfessors];
}


@end
