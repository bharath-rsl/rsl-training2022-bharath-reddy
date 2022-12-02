

#import <Foundation/Foundation.h>
#import "RssUrlDataModal.h"
#import "UIKit/UIKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface RssDataSource : NSObject <UITableViewDataSource>
-(instancetype)initWithUrl:(NSMutableArray<RssUrlDataModal *> *)URL;
@end

NS_ASSUME_NONNULL_END
