//
//  UtilsMacros.h
//  ZhongJiao
//
//  Created by 刘明 on 16/9/2.
//  Copyright © 2016年 刘明. All rights reserved.
//

#ifndef UtilsMacros_h
#define UtilsMacros_h

// 日志输出
#ifdef DEBUG
#define LMLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define LMLog(...)
#endif

#define LMWeakSelf(type)  __weak typeof(type) weak##type = type;
#define LMStrongSelf(type)  __strong typeof(type) type = weak##type;


#pragma mark - 颜色
#define LMWhiteColor [UIColor whiteColor]
#define LMBlackColor [UIColor blackColor]
#define LMDarkGrayColor [UIColor darkGrayColor]
#define LMLightGrayColor [UIColor lightGrayColor]
#define LMGrayColor [UIColor grayColor]
#define LMRedColor [UIColor redColor]
#define LMGreenColor [UIColor greenColor]
#define LMBlueColor [UIColor blueColor]
#define LMCyanColor [UIColor cyanColor]
#define LMYellowColor [UIColor yellowColor]
#define LMMagentaColor [UIColor magentaColor]
#define LMOrangeColor [UIColor orangeColor]
#define LMPurpleColor [UIColor purpleColor]
#define LMBrownColor [UIColor brownColor]
#define LMClearColor [UIColor clearColor]

//16进制
#define LMColorFromHex(s)  [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0green:(((s &0xFF00) >>8))/255.0blue:((s &0xFF))/255.0alpha:1.0]
//RGB
#define LMRGBAColor(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define LMRGBColor(r,g,b) LMRGBAColor(r,g,b,1.0f)
#define LMSeperatorColor LMRGBColor(234,237,240)
#define LMBgColor LMRGBColor(243,245,247)


#define LMRGBAFLOATColor(r,g,b,a) [UIColor colorWithRed:r green:g blue:b alpha:a]
#define LMRGBFLOATColor(r,g,b) LMRGBAFLOATColor(r,g,b,1.0f)

#define LMCommonHighLightRedColor LMRGBFLOATColor(1.00f,0.49f,0.65f)
#define LMCommonGrayTextColor LMRGBFLOATColor(0.63f,0.63f,0.63f)
#define LMCommonRedColor LMRGBFLOATColor(0.91f,0.33f,0.33f)
#define LMCommonBlackColor LMRGBFLOATColor(0.17f,0.23f,0.28f)
#define LMCommonTintColor LMRGBFLOATColor(0.42f,0.33f,0.27f)
#define LMCommonBgColor LMRGBFLOATColor(0.86f,0.85f,0.80f)
#define LMDetailTextColor LMRGBFLOATColor(0.56f,0.60f,0.62f)
#define LMLineBgColor LMRGBFLOATColor(0.86f,0.88f,0.89f)
#define LMTextColor LMRGBFLOATColor(0.32f,0.36f,0.40f)

#define LMNavigationBarTintColor LMRGBFLOATColor(0.86f, 0.85f, 0.80f)
#define LMNavigationTittleColor LMRGBFLOATColor(0.42f, 0.33f, 0.27f)
#define LMNavigationItemTintColor LMRGBFLOATColor(0.42f, 0.33f, 0.27f)

#define LMVersion [NSString stringWithFormat:@"%@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]]

//System version utils

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

//大于等于7.0的ios版本
#define iOS7_OR_LATER SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")

//大于等于8.0的ios版本
#define iOS8_OR_LATER SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")

//iOS6时，导航VC中view的起始高度
#define YH_HEIGHT (iOS7_OR_LATER ? 64:0)

//获取系统时间戳
#define getCurentTime [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]]

#define LMWindow [UIApplication sharedApplication].keyWindow    //主窗口
#define LMUserDefault [NSUserDefaults standardUserDefaults]

#pragma mark - 字符串转化
#define LMEmptyStr @""
#define LMIntToStr(i) [NSString stringWithFormat: @"%d", i]
#define LMIntegerToStr(i) [NSString stringWithFormat: @"%ld", i]
#define LMValidStr(str) [NHUtils validString:str]


#endif /* UtilsMacros_h */
