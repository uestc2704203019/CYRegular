//
//  NSString+Regular.m
//  Pods
//
//  Created by 柴源 on 2017/6/26.
//
//

#import "NSString+Regular.h"

@implementation NSString (Regular)

#pragma mark ----- 电话号码判断 -----

//是不是手机号码-----正则匹配规则正常电话号码，包含已经配入的号段
- (BOOL)isMobileNumber
{
    /**
     *
     *  手机号码
     *  移动号段：134[0-8],13[5-9],150,151,157,158,159,182,187,188
     *  联通号段：13[0-2],152,155,156,185,186
     *  电信号段：133，1349，153，180，189
     *  
     *  大陆地区固话以及小灵通：010，020，021，022，023，024，025，027，028，029号码，7位或者8位
     *
     **/
    
    return ([self mobileRegex]||[self isCMNumber]||[self isCUNumber]||[self isCTNumber]||[self isTelephoneNumber])?YES:NO;
    
}

//移动电话匹配
- (BOOL)mobileRegex
{
    NSString *mobileRegex = [NSString stringWithFormat:@"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$"];
    NSPredicate *mobilePredcate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",mobileRegex];
    return [mobilePredcate evaluateWithObject:self];
}

//是不是移动号码
- (BOOL)isCMNumber
{
    NSString *cmRegex = [NSString stringWithFormat:@"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$"];
    NSPredicate *cmPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",cmRegex];
    return [cmPredicate evaluateWithObject:self];
}

//是否是中国联通电话
- (BOOL)isCUNumber
{
    NSString *cuRegex = [NSString stringWithFormat:@"^1(3[0-2]|5[256]|8[56])\\d{8}$"];
    NSPredicate *cuPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",cuRegex];
    return [cuPredicate evaluateWithObject:self];
}

//是否是电信电话号码
- (BOOL)isCTNumber
{
    NSString *ctRegex = [NSString stringWithFormat:@"1((33|53|8[09][0-9])|349)\\d{7}$"];
    NSPredicate *ctPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",ctRegex];
    return [ctPredicate evaluateWithObject:self];
}

//是否是固定电话号码
- (BOOL)isTelephoneNumber
{
    NSString *teleRegex = [NSString stringWithFormat:@"0(10|(2[0-57-9])|\\d{3})\\d{7,8}$"];
    NSPredicate *telePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",teleRegex];
    return [telePredicate evaluateWithObject:self];
}

//轻量级判断是不是电话号码-----判断规则是1开头11位数字
- (BOOL)isLightMobileNumber
{
    NSString *ligthRegex = [NSString stringWithFormat:@"^1[1-9]\\d{9}$"];
    NSPredicate *lightPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",ligthRegex];
    return [lightPredicate evaluateWithObject:self];
}

#pragma mark ----- 字符串信息判断 -----
//判断是否全是数字
- (BOOL)isAllNumber
{
    NSString *tempStr = [self stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
    if (tempStr.length > 0) {
        return NO;
    }else{
        return YES;
    }
}

@end
