//
//  IngresseUser.h
//  IngresseSDK
//
//  Created by Rodrigo Borges Soares on 23/09/14.
//  Copyright (c) 2014 Ingresse. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Class that represents an Ingresse's user.
 */
@interface IngresseUser : NSObject

/**
 User's token.
 */
@property NSString *userToken;
/**
 User's id.
 */
@property NSString *userId;

@end
