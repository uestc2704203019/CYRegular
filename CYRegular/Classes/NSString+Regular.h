//
//  NSString+Regular.h
//  Pods
//
//  Created by 柴源 on 2017/6/26.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Regular)

#pragma mark ----- 电话号码判断 -----

//是不是电话号码-----正则匹配规则正常电话号码，包含已经配入的号段
- (BOOL)isMobileNumber;

//轻量级判断是不是电话号码-----判断规则是1开头11位数字
- (BOOL)isLightMobileNumber;

#pragma mark ----- 字符串信息判断 -----
//判断是否全是数字
- (BOOL)isAllNumber;


@end
