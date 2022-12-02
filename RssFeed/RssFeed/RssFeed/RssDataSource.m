

#import "RssDataSource.h"
#import "RssUrlDataModal.h"
#import "UIKit/UIKit.h"
#import "RssUrlViewCellTableViewCell.h"
@interface RssDataSource() 
@property (nonatomic) NSMutableArray<RssUrlDataModal *> * URL;
@end

@implementation RssDataSource
-(instancetype)initWithUrl:(NSMutableArray<RssUrlDataModal *> *)URL{
    self = [super init];
    if(self){
        _URL=URL;
    }
    return(self);
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return(1);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"##rows");
    NSLog(@"###%ld",self.URL.count);
    return(self.URL.count);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //RssUrlViewCellTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cellReuseIdentifier"];
    //cell.URL.text=self.URL[indexPath.row].URL;
    RssUrlViewCellTableViewCell *cell=[[RssUrlViewCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellReuseIdentifier"];
    cell.URL.text=[self.URL objectAtIndex:indexPath.row].URL;
    NSLog(@"###cell created");
    return(cell);
    
}

@end
