

#import "RssTableViewDelegate.h"
#import "UIKit/UIKit.h"
#import "RssUrlDataModal.h"
@interface RssTableViewDelegate ()
@property (nonatomic) NSMutableArray<RssUrlDataModal *> *Url;

@end

@implementation RssTableViewDelegate
-(instancetype)initWithUrl:(NSMutableArray<RssUrlDataModal *> *)URL{
    self = [super init];
    if(self){
        _Url=URL;
    }
    return(self);
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"11%@",self.Url[indexPath.row].URL);
    [self.delegate showFeedList:self.Url[indexPath.row].URL];
}

@end
