//
//  DCGlobalFun.m
//  KLine_test
//
//  Created by diaochuan on 2018/1/5.
//Copyright © 2018年 diaochuan. All rights reserved.
//

#import "DCGlobalFunc.h"
UIFont * font(CGFloat fontSize){
    return [UIFont systemFontOfSize:fontSize];
}
UIFont * font_bold(CGFloat fontSize){
    return [UIFont boldSystemFontOfSize:fontSize];
}
CGFloat screen_width(void){
    return [UIScreen mainScreen].bounds.size.width;
}
CGFloat screen_height(void){
    return [UIScreen mainScreen].bounds.size.height;
}
CGFloat adapt_width(CGFloat width){
    return screen_width() / 375.f * width;
}
CGFloat adapt_height(CGFloat height){
    return screen_height() / 667.f * height;
}
CGFloat navbar_height(void){
    return screen_height() > 736 ? 88 : 44;
}
CGFloat tabbar_height(void){
    return screen_height() > 736 ? 83 : 49;
}
@implementation DCGlobalFunc

@end
