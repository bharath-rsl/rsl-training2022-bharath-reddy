//
//  ContactsViewDelegate.m
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import "ContactsViewDelegate.h"
#import "UIKit/UIkit.h"
#import "DetailsViewController.h"
#import "ContactsViewDelegate.h"
@interface ContactsViewDelegate () <UITableViewDelegate>
@property (nonatomic) NSArray<ContactDataModel *> *contacts;
@end

@implementation ContactsViewDelegate
- (instancetype)initWithContacts:(NSArray<ContactDataModel *> *)contacts {
    self = [super init];
    if (self) {
        _contacts = contacts;
    }
    
    return self;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailsViewController *detailsViewController=[[DetailsViewController alloc] initWithDetails:_contacts[indexPath.row] ];
    detailsViewController.modalPresentationStyle=UIModalPresentationFullScreen;
    NSLog(@"did select rows");
    [self.delegate showDetails:detailsViewController];
    //NSLog(@"## %@",tableView.);
}
- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 2 == 0) {
        return 50;
    } else {
        return 40.0;
    }
}

@end
