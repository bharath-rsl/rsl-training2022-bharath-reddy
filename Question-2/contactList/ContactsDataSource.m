//
//  ContactsDataSource.m
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import "ContactsDataSource.h"
#import "UIKit/UIKit.h"
#import "contactViewCell.h"
#import "ContactDataModel.h"

@interface ContactsDataSource () <UITableViewDataSource>
@property (nonatomic) NSArray<ContactDataModel *> *contacts;
@end

@implementation ContactsDataSource
- (instancetype)initWithContacts:(NSArray<ContactDataModel *> *)contacts {
    self = [super init];
    if (self) {
        _contacts = contacts;
    }
    
    return self;
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return(1);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"%ld",self.contacts.count);
    return(self.contacts.count);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    contactViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellReuseIdentifier"];
        cell.contactName.text = self.contacts[indexPath.row].contactName;
        cell.contcatImage.image = self.contacts[indexPath.row].contactImage;
    NSLog(@"created cell:%@",cell.contactName.text);
        return cell;
}



- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return(@"header");
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    
    return(@"footer");
}
@end
