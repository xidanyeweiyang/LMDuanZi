//
//  DimensMacros.h
//  ZhongJiao
//
//  Created by 刘明 on 16/9/2.
//  Copyright © 2016年 刘明. All rights reserved.
//

#ifndef DimensMacros_h
#define DimensMacros_h


#define LMLeftMargin 15

#pragma mark - 系统UI
#define LMNavigationBarHeight 44
#define LMStatusBarHeight 20
#define LMTopBarHeight 64
#define LMToolBarHeight 44
#define LMTabBarHeight 49
#define LMiPhone4_W 320
#define LMiPhone4_H 480
#define LMiPhone5_W 320
#define LMiPhone5_H 568
#define LMiPhone6_W 375
#define LMiPhone6_H 667
#define LMiPhone6P_W 414
#define LMiPhone6P_H 736
/***  当前屏幕宽度 */
#define LMScreenWidth  [[UIScreen mainScreen] bounds].size.width
/***  当前屏幕高度 */
#define LMScreenHeight  [[UIScreen mainScreen] bounds].size.height
/***  普通字体 */
#define LMFont(size) [UIFont systemFontOfSize:size]
/***  粗体 */
#define LMBoldFont(size) [UIFont boldSystemFontOfSize:size]
#define LMLineHeight (1 / [UIScreen mainScreen].scale)


#endif /* DimensMacros_h */
