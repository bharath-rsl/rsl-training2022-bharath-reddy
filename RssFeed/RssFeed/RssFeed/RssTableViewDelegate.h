

#import <Foundation/Foundation.h>
#include "RssUrlDataModal.h"
#include "UIKit/UIKit.h"
NS_ASSUME_NONNULL_BEGIN
@protocol  fetchingRssFeedDeligate

-(void)showFeedList:(NSString *)URL;

@end
@interface RssTableViewDelegate : NSObject <UITableViewDelegate>
@property (nonatomic,weak) id<fetchingRssFeedDeligate> delegate;
-(instancetype)initWithUrl:(NSMutableArray<RssUrlDataModal *> *)URL;

@end

NS_ASSUME_NONNULL_END
