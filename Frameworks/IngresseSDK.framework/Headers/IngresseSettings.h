//
//  IngresseSettings.h
//  IngresseSDK
//
//  Created by Rodrigo Borges Soares on 23/09/14.
//  Copyright (c) 2014 Ingresse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IngresseSettings : NSObject

@property (retain) NSString *publicKey;
@property (retain) NSString *privateKey;
@property (retain) NSString *ingresseAppId;

+ (IngresseSettings *) sharedInstance;

@end
