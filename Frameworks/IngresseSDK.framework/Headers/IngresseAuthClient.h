//
//  AuthenticationClient.h
//  IngresseSDK
//
//  Created by Rodrigo Borges Soares on 23/09/14.
//  Copyright (c) 2014 Ingresse. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IngresseUser.h"

@interface IngresseAuthClient : NSObject

- (void) loginWithHandler:(void (^)(NSError *error, IngresseUser *user))handler;

- (NSString *) generateAuthString;

- (NSString *) hmacsha1:(NSString *)text key:(NSString *)secret;

+ (BOOL) handleOpenURL:(NSURL*)url sourceApplication:(NSString*)sourceApplication;

@end
