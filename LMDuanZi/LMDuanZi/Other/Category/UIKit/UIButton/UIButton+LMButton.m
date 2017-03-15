//
//  UIButton+LMButton.m
//  LMDuanZi
//
//  Created by 刘明 on 17/3/9.
//  Copyright © 2017年 刘明. All rights reserved.
//  GitHub:https://github.com/xidanyeweiyang/LMButton

#import "UIButton+LMButton.h"
#import <objc/runtime.h>

static char *touchBlockKey = "touchBlockKey";

static char *buttonStyleKey = "buttonStyle";

@interface UIButton ()

@property (nonatomic, copy) LMButtonTouchBlock touchBlock;

@property (nonatomic, assign) ButtonEdgeInsetsStyle buttonStyle;

@end

@implementation UIButton (LMButton)

+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             title:(NSString *)title
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock{
    
    return [self lm_buttonWithFrame:frame
                          superView:superView
                              title:title
                           fontSize:0
                        normalColor:nil
                    backgroundColor:nil
                       cornerRadius:0
                        borderColor:nil
                        borderWidth:0
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];
}

+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             title:(NSString *)title
                          fontSize:(CGFloat)fontSize
                       normalColor:(UIColor *)normalColor
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock{
    
    return [self lm_buttonWithFrame:frame
                          superView:superView
                              title:title
                           fontSize:fontSize
                        normalColor:normalColor
                    backgroundColor:nil
                       cornerRadius:0
                        borderColor:nil
                        borderWidth:0
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];
    
}


+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             title:(NSString *)title
                          fontSize:(CGFloat)fontSize
                       normalColor:(UIColor *)normalColor
                   backgroundColor:(UIColor *)backgroundColor
                      cornerRadius:(CGFloat)cornerRadius
                       borderColor:(UIColor *)borderColor
                       borderWidth:(CGFloat)borderWidth
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock{
    
    return [self lm_buttonWithFrame:frame
                          superView:superView
                              Image:nil
                      selectedImage:nil
                         hightImage:nil
                       diabledImage:nil
                    backgroundImage:nil
            backgroundSelectedImage:nil
               backgroundHightImage:nil
             backgroundDiabledImage:nil
                              title:title
                           fontSize:fontSize
                        normalColor:normalColor
                      selectedColor:nil
                       diabledColor:nil
                    backgroundColor:backgroundColor
                       cornerRadius:cornerRadius
                        borderColor:borderColor
                        borderWidth:borderWidth
               ButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleImageUnknow
                    imageTitleSpace:0
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];
}

+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                             title:(NSString *)title
                          fontSize:(CGFloat)fontSize
                       normalColor:(UIColor *)normalColor
             ButtonEdgeInsetsStyle:(ButtonEdgeInsetsStyle)buttonStyle
                   imageTitleSpace:(CGFloat)space
                LMButtonTouchBlock:(LMButtonTouchBlock)touchBlock{
    
    return [self lm_buttonWithFrame:frame
                          superView:superView
                              Image:imageName
                      selectedImage:nil
                         hightImage:nil
                       diabledImage:nil
                    backgroundImage:nil
            backgroundSelectedImage:nil
               backgroundHightImage:nil
             backgroundDiabledImage:nil
                              title:title
                           fontSize:fontSize
                        normalColor:normalColor
                      selectedColor:nil
                       diabledColor:nil
                    backgroundColor:nil
                       cornerRadius:0
                        borderColor:nil
                        borderWidth:0
              ButtonEdgeInsetsStyle:buttonStyle
                    imageTitleSpace:space
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];

}


+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                LMButtonTouchBlock:(void(^)())touchBlock{
    
    return [self lm_buttonWithFrame:frame
                          superView:superView
                              Image:imageName
                      selectedImage:nil
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];
}

+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                     selectedImage:(NSString *)selectedImageName
                LMButtonTouchBlock:(void(^)())touchBlock{
    
    return [self lm_buttonWithFrame:(CGRect)frame
                          superView:(UIView *)superView
                              Image:imageName
                      selectedImage:selectedImageName
                         hightImage:nil
                       diabledImage:nil
                       cornerRadius:0
                        borderColor:nil
                        borderWidth:0
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];
    
}



+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                     selectedImage:(NSString *)selectedImageName
                      cornerRadius:(CGFloat)cornerRadius
                       borderColor:(UIColor *)borderColor
                       borderWidth:(CGFloat)borderWidth
                LMButtonTouchBlock:(void(^)())touchBlock{
    
    return [self lm_buttonWithFrame:(CGRect)frame
                          superView:(UIView *)superView
                              Image:imageName
                      selectedImage:selectedImageName
                         hightImage:nil
                       diabledImage:nil
                       cornerRadius:cornerRadius
                        borderColor:borderColor
                        borderWidth:borderWidth
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];
}



+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                     selectedImage:(NSString *)selectedImageName
                        hightImage:(NSString *)hightImageName
                      diabledImage:(NSString *)diabledImageName
                      cornerRadius:(CGFloat)cornerRadius
                       borderColor:(UIColor *)borderColor
                       borderWidth:(CGFloat)borderWidth
                LMButtonTouchBlock:(void(^)())touchBlock{
    
    return [self lm_buttonWithFrame:frame
                          superView:superView
                              Image:imageName
                      selectedImage:selectedImageName
                         hightImage:hightImageName
                       diabledImage:diabledImageName
                    backgroundImage:nil
            backgroundSelectedImage:nil
               backgroundHightImage:nil
             backgroundDiabledImage:nil
                              title:nil
                           fontSize:0
                        normalColor:nil
                      selectedColor:nil
                       diabledColor:nil
                    backgroundColor:nil
                       cornerRadius:cornerRadius
                        borderColor:borderColor
                        borderWidth:borderWidth
               ButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleImageUnknow
                    imageTitleSpace:0
                 LMButtonTouchBlock:^{
                     touchBlock();
                 }];
}


+ (instancetype)lm_buttonWithFrame:(CGRect)frame
                         superView:(UIView *)superView
                             Image:(NSString *)imageName
                     selectedImage:(NSString *)selectedImageName
                        hightImage:(NSString *)hightImageName
                       diabledImage:(NSString *)diabledImageName
                   backgroundImage:(NSString *)backgroundImage
           backgroundSelectedImage:(NSString *)backgroundSelectedImageName
              backgroundHightImage:(NSString *)backgroundHightImageName
             backgroundDiabledImage:(NSString *)backgroundDiabledImageName
                            title:(NSString *)title
                          fontSize:(CGFloat)fontSize
                       normalColor:(UIColor *)normalColor
                     selectedColor:(UIColor *)selectedColor
                       diabledColor:(UIColor *)diabledColor
                   backgroundColor:(UIColor *)backgroundColor
                      cornerRadius:(CGFloat)cornerRadius
                       borderColor:(UIColor *)borderColor
                       borderWidth:(CGFloat)borderWidth
             ButtonEdgeInsetsStyle:(ButtonEdgeInsetsStyle)buttonStyle
                   imageTitleSpace:(CGFloat)space
                LMButtonTouchBlock:(void(^)())touchBlock{
    
    UIButton *button = [[UIButton alloc] init];
    button.frame = frame;
    [superView addSubview:button];
    if (imageName) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    if (selectedImageName) {
        [button setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    }
    
    if (hightImageName) {
        [button setImage:[UIImage imageNamed:hightImageName] forState:UIControlStateHighlighted];
    }
    
    if (diabledImageName) {
        [button setImage:[UIImage imageNamed:diabledImageName] forState:UIControlStateDisabled];
    }
    
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
        
        if (normalColor) {
            [button setTitleColor:normalColor forState:UIControlStateNormal];
        }else{
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        }
        if (selectedColor) {
            [button setTitleColor:selectedColor forState:UIControlStateSelected];
        }
        if (diabledColor) {
            [button setTitleColor:diabledColor forState:UIControlStateDisabled];
        }
    }
    
    
    if (backgroundImage) {
        [button setBackgroundImage:[UIImage imageNamed:backgroundImage] forState:UIControlStateNormal];
    }
    if (backgroundSelectedImageName) {
        [button setBackgroundImage:[UIImage imageNamed:backgroundSelectedImageName] forState:UIControlStateSelected];
    }
    if (backgroundHightImageName) {
        [button setBackgroundImage:[UIImage imageNamed:backgroundHightImageName] forState:UIControlStateHighlighted];
    }
    if (backgroundDiabledImageName) {
        [button setBackgroundImage:[UIImage imageNamed:backgroundDiabledImageName] forState:UIControlStateDisabled];
    }
    
    if (backgroundColor) {
        [button setBackgroundColor:backgroundColor];
    }
    
    if (cornerRadius != 0) {
        [button.layer setCornerRadius:cornerRadius];
    }
    
    if (borderColor) {
        [button.layer setBorderColor:borderColor.CGColor];
    }
    
    if (borderWidth != 0) {
        [button.layer setBorderWidth:borderWidth];
    }
    
    if (buttonStyle != ButtonEdgeInsetsStyleImageUnknow) {
        
        [self lm_setButtonEdgeInsetsStyle:buttonStyle imageTitleSpace:space button:button];
    }
    
    if (fontSize != 0) {
        button.titleLabel.font = [UIFont systemFontOfSize:fontSize];

    }else{
        button.titleLabel.font = [UIFont systemFontOfSize:17];
    }
    
//    button.buttonStyle = buttonStyle;

    button.touchBlock  = touchBlock;
    [button addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}



+ (void)lm_setButtonEdgeInsetsStyle:(ButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space button:(UIButton *)button{
    
    CGFloat imageViewWidth = CGRectGetWidth(button.imageView.frame);
    CGFloat labelWidth = CGRectGetWidth(button.titleLabel.frame);
    
    if (labelWidth == 0) {
        CGSize titleSize = [button.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:button.titleLabel.font}];
        labelWidth  = titleSize.width;
    }
    
    CGFloat imageInsetsTop = 0.0f;
    CGFloat imageInsetsLeft = 0.0f;
    CGFloat imageInsetsBottom = 0.0f;
    CGFloat imageInsetsRight = 0.0f;
    
    CGFloat titleInsetsTop = 0.0f;
    CGFloat titleInsetsLeft = 0.0f;
    CGFloat titleInsetsBottom = 0.0f;
    CGFloat titleInsetsRight = 0.0f;
    
    switch (style) {
        case ButtonEdgeInsetsStyleImageRight:
        {
            space = space * 0.5;
            
            imageInsetsLeft = labelWidth + space;
            imageInsetsRight = -imageInsetsLeft;
            
            titleInsetsLeft = - (imageViewWidth + space);
            titleInsetsRight = -titleInsetsLeft;
        }
            break;
            
        case ButtonEdgeInsetsStyleImageLeft:
        {
            space = space * 0.5;
            
            imageInsetsLeft = -space;
            imageInsetsRight = -imageInsetsLeft;
            
            titleInsetsLeft = space;
            titleInsetsRight = -titleInsetsLeft;
        }
            break;
        case ButtonEdgeInsetsStyleImageBottom:
        {
            CGFloat imageHeight = CGRectGetHeight(button.imageView.frame);
            CGFloat labelHeight = CGRectGetHeight(button.titleLabel.frame);
            CGFloat buttonHeight = CGRectGetHeight(button.frame);
            CGFloat boundsCentery = (imageHeight + space + labelHeight) * 0.5;
            
            CGFloat centerX_button = CGRectGetMidX(button.bounds); // bounds
            CGFloat centerX_titleLabel = CGRectGetMidX(button.titleLabel.frame);
            CGFloat centerX_image = CGRectGetMidX(button.imageView.frame);
            
            CGFloat imageBottomY = CGRectGetMaxY(button.imageView.frame);
            CGFloat titleTopY = CGRectGetMinY(button.titleLabel.frame);
            
            imageInsetsTop = buttonHeight - (buttonHeight * 0.5 - boundsCentery) - imageBottomY;
            imageInsetsLeft = centerX_button - centerX_image;
            imageInsetsRight = - imageInsetsLeft;
            imageInsetsBottom = - imageInsetsTop;
            
            titleInsetsTop = (buttonHeight * 0.5 - boundsCentery) - titleTopY;
            titleInsetsLeft = -(centerX_titleLabel - centerX_button);
            titleInsetsRight = - titleInsetsLeft;
            titleInsetsBottom = - titleInsetsTop;
            
        }
            break;
        case ButtonEdgeInsetsStyleImageTop:
        {
            CGFloat imageHeight = CGRectGetHeight(button.imageView.frame);
            CGFloat labelHeight = CGRectGetHeight(button.titleLabel.frame);
            CGFloat buttonHeight = CGRectGetHeight(button.frame);
            CGFloat boundsCentery = (imageHeight + space + labelHeight) * 0.5;
            
            CGFloat centerX_button = CGRectGetMidX(button.bounds); // bounds
            CGFloat centerX_titleLabel = CGRectGetMidX(button.titleLabel.frame);
            CGFloat centerX_image = CGRectGetMidX(button.imageView.frame);
            
            CGFloat imageTopY = CGRectGetMinY(button.imageView.frame);
            CGFloat titleBottom = CGRectGetMaxY(button.titleLabel.frame);
            
            imageInsetsTop = (buttonHeight * 0.5 - boundsCentery) - imageTopY;
            imageInsetsLeft = centerX_button - centerX_image;
            imageInsetsRight = - imageInsetsLeft;
            imageInsetsBottom = - imageInsetsTop;
            
            titleInsetsTop = buttonHeight - (buttonHeight * 0.5 - boundsCentery) - titleBottom;
            titleInsetsLeft = -(centerX_titleLabel - centerX_button);
            titleInsetsRight = - titleInsetsLeft;
            titleInsetsBottom = - titleInsetsTop;
        }
            break;
            
        default:
            break;
    }
    
    button.imageEdgeInsets = UIEdgeInsetsMake(imageInsetsTop, imageInsetsLeft, imageInsetsBottom, imageInsetsRight);
    button.titleEdgeInsets = UIEdgeInsetsMake(titleInsetsTop, titleInsetsLeft, titleInsetsBottom, titleInsetsRight);
}




+ (void)didClickButton:(UIButton *)sender{
    
    if (sender.touchBlock) {
        
        sender.touchBlock();
    }
}


- (void)setTouchBlock:(LMButtonTouchBlock)touchBlock{
    
    objc_setAssociatedObject(self, touchBlockKey, touchBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (LMButtonTouchBlock)touchBlock{
    
    return objc_getAssociatedObject(self, touchBlockKey);
}

- (void)setButtonStyle:(ButtonEdgeInsetsStyle)buttonStyle{
    
    objc_setAssociatedObject(self, buttonStyleKey, [NSNumber numberWithUnsignedInteger:buttonStyle] , OBJC_ASSOCIATION_COPY_NONATOMIC);

}

- (ButtonEdgeInsetsStyle)buttonStyle{
    
    return [objc_getAssociatedObject(self, buttonStyleKey) integerValue];
}

@end
