//
//  NSString+DXJsonFile.m
//  ejc
//
//  Created by diaochuan on 2018/1/5.
//  Copyright © 2018年 Shanghai Tianxi Information Technology Co., Ltd. All rights reserved.
//

#import "NSData+DXJsonFile.h"

@implementation NSData (DXJsonFile)
+ (void)writeJsonData:(id)data ToFile:(NSString *)fileName{
    NSAssert(fileName.length > 0, @"fileName must valid");
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:data options:NSJSONWritingPrettyPrinted error:NULL];
    NSString *jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString* filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString* fileAtPath = [filePath stringByAppendingPathComponent:fileName];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:fileAtPath]) {
        [[NSFileManager defaultManager] createFileAtPath:fileAtPath contents:nil attributes:nil];
    }
    [[jsonString dataUsingEncoding:NSUTF8StringEncoding] writeToFile:fileAtPath atomically:NO];
}
+ (id)readJsonStringFromFile:(NSString*)fileName{
    if (!fileName.length) {
        return nil;
    }
    NSString* filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString* fileAtPath = [filePath stringByAppendingPathComponent:fileName];
    NSData *data = [NSData dataWithContentsOfFile:fileAtPath];
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:NULL];
}


@end
