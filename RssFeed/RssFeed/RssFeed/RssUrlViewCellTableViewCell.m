

#import "RssUrlViewCellTableViewCell.h"

@implementation RssUrlViewCellTableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _URL = [[UILabel alloc] initWithFrame:CGRectMake(0,0,400,50)];
        [self.contentView addSubview:_URL];
        
        
    }
    return self;
}

@end
