//
//  NSData+Base64.h
//  WYLibraries
//
//  Created by seaphy on 16/5/16.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Base64)

+ (NSData *)wy_base64DataFromString:(NSString *)string;

@end
