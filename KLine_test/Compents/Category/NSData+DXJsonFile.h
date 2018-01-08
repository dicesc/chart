//
//  NSString+DXJsonFile.h
//  ejc
//
//  Created by diaochuan on 2018/1/5.
//  Copyright © 2018年 Shanghai Tianxi Information Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (DXJsonFile)
+ (void)writeJsonData:(id)data ToFile:(NSString *)fileName;
+ (id)readJsonStringFromFile:(NSString*)fileName;
@end
