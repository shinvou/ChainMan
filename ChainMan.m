//
//  ChainMan.m
//  ChainMan - Use Keychain Services easily
//
//  Created by Timm Kandziora on 25.05.14.
//  Copyright (c) 2014 shinvou. All rights reserved.
//

#import "ChainMan.h"

@implementation ChainMan

+ (void)storePasswordInKeychainForServiceName:(NSString *)serviceName withAccountName:(NSString *)accountName andPassword:(NSString *)password
{
    SecKeychainAddGenericPassword(
                                  NULL,
                                  (UInt32)serviceName.length,
                                  serviceName.UTF8String,
                                  (UInt32)accountName.length,
                                  accountName.UTF8String,
                                  (UInt32)password.length,
                                  password.UTF8String,
                                  NULL
                                  );
}

+ (NSString *)getPasswordFromKeychainFromServiceName:(NSString *)serviceName forAccountName:(NSString *)accountName
{
    UInt32 passwordLength = 0;
	void *passwordData = NULL;
    
    SecKeychainFindGenericPassword(
                                   NULL,
                                   (UInt32)serviceName.length,
                                   serviceName.UTF8String,
                                   (UInt32)accountName.length,
                                   accountName.UTF8String,
                                   &passwordLength,
                                   &passwordData,
                                   NULL
                                   );
    
    if (passwordLength > 0) {
        NSString *password = [[NSString alloc] initWithBytes:passwordData length:passwordLength encoding:NSUTF8StringEncoding];
        
        SecKeychainItemFreeContent(NULL, passwordData);
        
        return password;
    } else {
        return nil;
    }
}

@end
