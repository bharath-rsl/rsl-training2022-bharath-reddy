//
//  ContactsViewController.m
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import "ContactsViewController.h"
#import "contactViewCell.h"
#import "DetailsViewController.h"
#import "ContactsDataSource.h"
#import "ContactsViewDelegate.h"
@interface ContactsViewController () <showingDetailsDelegate>

@property (nonatomic) UITableView *contactsTableView;
@property (nonatomic) NSArray<ContactDataModel *> *contacts;
@property (nonatomic,strong) ContactsViewDelegate *contactsViewDelegate;
@property (nonatomic,strong) ContactsDataSource *contactDataSource;
@end

@implementation ContactsViewController
- (instancetype)initWithContacts:(NSArray<ContactDataModel *> *)contacts {
    self = [super init];
    if (self) {
        _contacts = contacts;
    }
    
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.contactsTableView=[[UITableView alloc] initWithFrame:CGRectZero];
    self.view=self.contactsTableView;
   self.contactsViewDelegate = [[ContactsViewDelegate alloc] initWithContacts:self.contacts];
    self.contactDataSource=[[ContactsDataSource alloc] initWithContacts:self.contacts];
    
    self.contactsTableView.dataSource=self.contactDataSource;
    self.contactsTableView.delegate=self.contactsViewDelegate;
    self.contactsViewDelegate.delegate=self;
    [self.contactsTableView registerClass:[contactViewCell class] forCellReuseIdentifier:@"cellReuseIdentifier"];
    
}
-(void)showDetails:(DetailsViewController *)detailsViewController{
    [self presentModalViewController:detailsViewController animated:YES];
}

@end
