#import "ViewController.h"

#import "ContactDataModel.h"
#import "ContactsViewController.h"

@interface ViewController ()

@property(nonatomic) UIButton *startDemoButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"UITableView Demo";
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.startDemoButton = [[UIButton alloc] init];
    [self.view addSubview:self.startDemoButton];
    
    [self.startDemoButton addTarget:self action:@selector(demoButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    [self.startDemoButton setTitle:@"Start Demo" forState:UIControlStateNormal];
    self.startDemoButton.titleLabel.font = [UIFont boldSystemFontOfSize:35];

    [self.startDemoButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    // Set Constraints
    self.startDemoButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.startDemoButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.startDemoButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [self.startDemoButton.heightAnchor constraintEqualToConstant:40].active = YES;
}

-(void)demoButtonTapped {
    NSArray<ContactDataModel *> *contacts = [self createDataModel];
    ContactsViewController *contactsViewController = [[ContactsViewController alloc] initWithContacts:contacts];
    contactsViewController.modalPresentationStyle=UIModalPresentationFullScreen;
    [self presentModalViewController:contactsViewController animated:YES];
    
    
}

-(NSArray<ContactDataModel *> *)createDataModel {
    ContactDataModel *contact1 = [[ContactDataModel alloc] initWithContactDetails:@"bharath" contactImage:[UIImage imageNamed:@"img1"]email:@"bh@gmail.com" phoneNo:123456];
    
    ContactDataModel *contact2 = [[ContactDataModel alloc] initWithContactDetails:@"James" contactImage:[UIImage imageNamed:@"img3"] email:@"james@gmail.com" phoneNo:7478223];
    
    ContactDataModel *contact3 = [[ContactDataModel alloc] initWithContactDetails:@"Sara" contactImage:[UIImage imageNamed:@"img4"] email:@"sara@gmail.com" phoneNo:2146];
    
    ContactDataModel *contact4 = [[ContactDataModel alloc] initWithContactDetails:@"mike" contactImage:[UIImage imageNamed:@"img1"] email:@"mike@gmail.com" phoneNo:2143246];
    
    ContactDataModel *contact5 = [[ContactDataModel alloc] initWithContactDetails:@"jenny" contactImage:[UIImage imageNamed:@"img3"] email:@"jenny@gmail.com" phoneNo:21288446];
    
    ContactDataModel *contact6 = [[ContactDataModel alloc] initWithContactDetails:@"lucifer" contactImage:[UIImage imageNamed:@"img4"] email:@"lucier@gmail.com" phoneNo:21244346];
    return @[contact1, contact2, contact3,contact4,contact5,contact6];
}

@end
