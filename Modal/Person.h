//
//  Person.h
//  mvc
//
//  Created by Bharath Reddy on 24/11/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@protocol PersonDetailsModelDelegate <NSObject>

- (void)updateProfileViewdStatus;

@end

@interface Person : NSObject
@property (nonatomic, weak) id<PersonDetailsModelDelegate> delegate;
@property NSString *firstName;
@property NSString *lastName;
@property NSInteger age;
@property NSString *city;
@property NSInteger height;
@property NSMutableArray<UIImage *> *profileImages;
@property BOOL  profileViewd;

-(id)initWithDetails:(NSString *)firstName lastName:(NSString *)lastName
                 age:(NSInteger)age city:(NSString *)city  height:(NSInteger)height profileImages:(NSMutableArray<UIImage *> *)profileImages profileViewd:(BOOL)profileViewed;
@end
NS_ASSUME_NONNULL_END
