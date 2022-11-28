//
//  contactViewCell.m
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import "contactViewCell.h"

@implementation contactViewCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _contactName = [[UILabel alloc] initWithFrame:CGRectZero];
        _contactName.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:_contactName];
        
        
        _contcatImage = [[UIImageView alloc] initWithFrame:CGRectZero];
        _contcatImage.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:_contcatImage];
        
        [self addConstraints];
    }
    return self;
}

-(void)addConstraints {
    [NSLayoutConstraint activateConstraints:@[
        
        [self.contcatImage.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:10],
        [self.contcatImage.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:10],
        [self.contcatImage.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-10],
        [self.contcatImage.widthAnchor constraintEqualToConstant:40],
        
        [self.contactName.leadingAnchor constraintEqualToAnchor:self.contcatImage.trailingAnchor constant:10],
        [self.contactName.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:10],
        [self.contactName.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-10],
        [self.contactName.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-10],
    ]];
}@end
