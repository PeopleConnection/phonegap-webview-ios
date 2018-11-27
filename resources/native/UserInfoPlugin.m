//
//  UserInfoPlugin.m
//  TestApp
//
//  Created by Ronald Alfaro on 11/23/18.
//  Copyright © 2018 Pconnection. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfoPlugin.h"
#import <Cordova/CDVPlugin.h>

@implementation UserInfoPlugin
    
    static NSString* userPhone;
    static NSString* userId;
    
+ (NSString*) userPhone
    { @synchronized(self) { return userPhone; } }
    
+ (void) setUserPhone:(NSString *)val
    { @synchronized(self) { userPhone = val; } }
    
    + (NSString*) userId
    { @synchronized(self) { return userId; } }
    
+ (void) setUserId:(NSString *)val
    { @synchronized(self) { userId = val; } }
    
- (void)getPhone:(CDVInvokedUrlCommand*)command
    {
        CDVPluginResult* pluginResult = nil;
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:userPhone];
        
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
    
- (void)getId:(CDVInvokedUrlCommand*)command
    {
        CDVPluginResult* pluginResult = nil;
        //NSString* echo = [command.arguments objectAtIndex:0];
        
        //if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:userId];
        /*} else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        }*/
        
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
    
@end
