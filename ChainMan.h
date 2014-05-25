//
//  ChainMan.h
//  ChainMan - Use Keychain Services easily
//
//  Created by Timm Kandziora on 25.05.14.
//  Copyright (c) 2014 shinvou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChainMan : NSObject

+ (void)storePasswordInKeychainForServiceName:(NSString *)serviceName withAccountName:(NSString *)accountName andPassword:(NSString *)password;
+ (NSString *)getPasswordFromKeychainFromServiceName:(NSString *)serviceName forAccountName:(NSString *)accountName;

@end
