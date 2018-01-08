//
//  DCGlobalFun.h
//  KLine_test
//
//  Created by diaochuan on 2018/1/5.
//Copyright © 2018年 diaochuan. All rights reserved.
//

#import <UIKit/UIKit.h>
FOUNDATION_EXPORT UIFont * font(CGFloat fontSize);
FOUNDATION_EXPORT UIFont * font_bold(CGFloat fontSize);
FOUNDATION_EXPORT CGFloat screen_width(void);
FOUNDATION_EXPORT CGFloat screen_height(void);
FOUNDATION_EXPORT CGFloat adapt_width(CGFloat width);
FOUNDATION_EXPORT CGFloat adapt_height(CGFloat height);
FOUNDATION_EXPORT CGFloat navbar_height(void);
FOUNDATION_EXPORT CGFloat tabbar_height(void);
@interface DCGlobalFunc : UIView

@end
