//
//  UIButton+LMButton.h
//  LMDuanZi
//
//  Created by 刘明 on 17/3/9.
//  Copyright © 2017年 刘明. All rights reserved.
//  GitHub:https://github.com/xidanyeweiyang/LMButton

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, ButtonEdgeInsetsStyle) {
    ButtonEdgeInsetsStyleImageLeft,
    ButtonEdgeInsetsStyleImageRight,
    ButtonEdgeInsetsStyleImageTop,
    ButtonEdgeInsetsStyleImageBottom,
    ButtonEdgeInsetsStyleImageUnknow
};

typedef void(^LMButtonTouchBlock)();

@interface UIButton (LMButton)



/**
 快速创建带图片按钮

 @param imageName 图片
 @param touchBlock 响应Block
 @return 图片按钮
 */
+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                LMButtonTouchBlock:(void(^)())touchBlock;


/**
 快速创建带文本按钮
 
 @param title 文本 默认黑色 17号字体
 @param touchBlock 响应Block
 @return 文本按钮
 */
+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             title:(NSString *)title
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock;

/**
 普通文本按钮
 
 @param title 文本
 @param fontSize 字体
 @param normalColor 文本颜色
 @param touchBlock 响应Block
 @return 普通文本按钮
 */
+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             title:(NSString *)title
                          fontSize:(CGFloat)fontSize
                       normalColor:(UIColor *)normalColor
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock;
/**
 按钮带圆角

 @param title 文本
 @param fontSize 字体
 @param normalColor 文本颜色
 @param backgroundColor 背景色
 @param cornerRadius 圆角大小
 @param borderColor 边框颜色
 @param borderWidth 边框宽度
 @param touchBlock 响应Block
 @return 按钮带圆角
 */
+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             title:(NSString *)title
                          fontSize:(CGFloat)fontSize
                       normalColor:(UIColor *)normalColor
                   backgroundColor:(UIColor *)backgroundColor
                      cornerRadius:(CGFloat)cornerRadius
                       borderColor:(UIColor *)borderColor
                       borderWidth:(CGFloat)borderWidth
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock;


/**
 能够自定义图片和文本位置的按钮

 @param imageName 图片
 @param title 文本
 @param fontSize 字体大小
 @param normalColor 文本颜色
 @param buttonStyle 文本和图片位置
 @param space 文本和图片之间空隙
 @param touchBlock 响应Block
 @return 能够自定义图片和文本位置的按钮
 */
+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                             title:(NSString *)title
                          fontSize:(CGFloat)fontSize
                       normalColor:(UIColor *)normalColor
             ButtonEdgeInsetsStyle:(ButtonEdgeInsetsStyle)buttonStyle
                   imageTitleSpace:(CGFloat)space
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock;


@end
