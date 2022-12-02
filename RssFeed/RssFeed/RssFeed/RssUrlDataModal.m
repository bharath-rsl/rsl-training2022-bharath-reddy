

#import "RssUrlDataModal.h"

@implementation RssUrlDataModal

-(id)initWithURL:(NSString *)URL{
    self=[super init];
    if(self){
        self.URL=URL;
    }
    return(self);
}
@end
