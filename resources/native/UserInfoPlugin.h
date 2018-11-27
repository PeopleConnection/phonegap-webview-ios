//
//  UserInfoPlugin.h
//  TestApp
//
//  Created by Ronald Alfaro on 11/23/18.
//  Copyright © 2018 Pconnection. All rights reserved.
//

#ifndef UserInfoPlugin_h
#define UserInfoPlugin_h
#import <Cordova/CDVPlugin.h>

@interface UserInfoPlugin : CDVPlugin
- (void)getPhone:(CDVInvokedUrlCommand*)command;
- (void)getId:(CDVInvokedUrlCommand*)command;
+ (NSString*)userPhone;
+ (NSString*)userId;
+ (void) setUserPhone:(NSString*)val;
+ (void) setUserId:(NSString*)val;
@end

#endif /* UserInfoPlugin_h */
