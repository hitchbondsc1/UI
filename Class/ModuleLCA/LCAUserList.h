//
//  LCCKUser.h
//  LeanCloudChatKit-iOS
//
//  v0.8.5 Created by ElonChan on 16/3/9.
//  Copyright © 2016年 LeanCloud. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LCAUserList : NSObject  //<LCCKUserDelegate>

/**
 *  检查与 aPerson 是否表示同一对象
 */

+ (NSArray *) getUserListAll;

+ (NSObject *)getUserListById:(NSString *) objectId ;

//- (BOOL)isEqualToUer:(LCCKUser *)user;

//- (void)saveToDiskWithKey:(NSString *)key;

//+ (id)loadFromDiskWithKey:(NSString *)key;

@end
