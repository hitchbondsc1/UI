//
//  LCCKUser.m
//  LeanCloudChatKit-iOS
//
//  v0.8.5 Created by ElonChan on 16/3/9.
//  Copyright © 2016年 LeanCloud. All rights reserved.
//

#import "LCAUserList.h"
#import <objc/runtime.h>
#import "AVQuery.h"

@interface LCAUserList()
@end

@implementation LCAUserList

+ (NSArray *)getUserListAll{
    
    AVQuery *query = [AVQuery queryWithClassName:@"_User"];
//    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
//
//        if (objects.count==0) {
//            return ;
//        }
//        if (error){
//            return;
//        }
//        NSMutableArray *usersId= [NSMutableArray array];
//        for (AVObject *object in objects) {
//            [usersId addObject:([object objectForKey:@"objectId"])];
//        }
//
//    }];
    NSMutableArray *usersId= [NSMutableArray array];
    NSMutableArray *objects= [NSMutableArray array];
    [query orderByDescending:@"objectId"];
    objects = [query findObjects];
    for (AVObject *object in objects){
        [usersId addObject:([object objectForKey:@"objectId"])];
    }
    //AVObject *users = [userQuery findObjects];
    //NSArray *userIds = [users objectForKey:@"objectId"];
    //NSArray *userIds = nil;
    return usersId;
}

+ (NSObject *)getUserListById:(NSString *) objectId {
    
    AVQuery *query = [AVQuery queryWithClassName:@"_User"];
    
    NSObject *objects= [NSMutableArray array];
    
    objects = [query getObjectWithId:objectId];
    
    return objects;
}

//- (instancetype)initWithUserId:(NSString *)userId name:(NSString *)name avatarURL:(NSURL *)avatarURL clientId:(NSString *)clientId {
//    self = [super init];
//    if (!self) {
//        return nil;
//    }
//    _userId = userId;
//    _name = name;
//    _avatarURL = avatarURL;
//    _clientId = clientId;
//    return self;
//}



//
//@synthesize userId = _userId;
//@synthesize name = _name;
//@synthesize avatarURL = _avatarURL;
//@synthesize clientId = _clientId;



//
//- (instancetype)initWithUserId:(NSString *)userId name:(NSString *)name avatarURL:(NSURL *)avatarURL clientId:(NSString *)clientId {
//    self = [super init];
//    if (!self) {
//        return nil;
//    }
//    _userId = userId;
//    _name = name;
//    _avatarURL = avatarURL;
//    _clientId = clientId;
//    return self;
//}
//
//+ (instancetype)userWithUserId:(NSString *)userId name:(NSString *)name avatarURL:(NSURL *)avatarURL clientId:(NSString *)clientId{
//    LCCKUser *user = [[LCCKUser alloc] initWithUserId:userId name:name avatarURL:avatarURL clientId:clientId];
//    return user;
//}
//
//- (instancetype)initWithUserId:(NSString *)userId name:(NSString *)name avatarURL:(NSURL *)avatarURL {
//    return [self initWithUserId:userId name:name avatarURL:avatarURL clientId:userId];
//}
//
//+ (instancetype)userWithUserId:(NSString *)userId name:(NSString *)name avatarURL:(NSURL *)avatarURL {
//    return [self userWithUserId:userId name:name avatarURL:avatarURL clientId:userId];
//}
//
//- (instancetype)initWithClientId:(NSString *)clientId {
//    return [self initWithUserId:nil name:nil avatarURL:nil clientId:clientId];
//}
//
//+ (instancetype)userWithClientId:(NSString *)clientId {
//    return [self userWithUserId:nil name:nil avatarURL:nil clientId:clientId];
//}
//
//- (BOOL)isEqualToUer:(LCCKUser *)user {
//    return (user.userId == self.userId);
//}
//
//- (id)copyWithZone:(NSZone *)zone {
//    return [[LCCKUser alloc] initWithUserId:self.userId
//                                       name:self.name
//                                  avatarURL:self.avatarURL
//                                   clientId:self.clientId
//            ];
//}
//
//
//- (void)encodeWithCoder:(NSCoder *)aCoder {
//    [aCoder encodeObject:self.userId forKey:@"userId"];
//    [aCoder encodeObject:self.name forKey:@"name"];
//    [aCoder encodeObject:self.avatarURL forKey:@"avatarURL"];
//    [aCoder encodeObject:self.clientId forKey:@"clientId"];
//}
//
//- (id)initWithCoder:(NSCoder *)aDecoder {
//    if(self = [super init]){
//        _userId = [aDecoder decodeObjectForKey:@"userId"];
//        _name = [aDecoder decodeObjectForKey:@"name"];
//        _avatarURL = [aDecoder decodeObjectForKey:@"avatarURL"];
//        _clientId = [aDecoder decodeObjectForKey:@"clientId"];
//    }
//    return self;
//}
//
//- (void)saveToDiskWithKey:(NSString *)key {
//    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self];
//    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
//    [[NSUserDefaults standardUserDefaults] synchronize];
//}
//
//+ (id)loadFromDiskWithKey:(NSString *)key {
//    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
//    id result = [NSKeyedUnarchiver unarchiveObjectWithData:data];
//    return result;
//}

@end
