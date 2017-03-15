//
//  UINavigationItem+LMNavigationItem.m
//  LMDuanZi
//
//  Created by 刘明 on 17/3/13.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import "UINavigationItem+LMNavigationItem.h"

@implementation UINavigationItem (LMNavigationItem)

- (void)setLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem{
    
    if (iOS7_OR_LATER) {
        
        UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        spaceItem.width = -8;
        if (leftBarButtonItem) {
            [self setLeftBarButtonItems:@[spaceItem,leftBarButtonItem]];
        }

    }else{
        
        [self setLeftBarButtonItem:leftBarButtonItem animated:NO];
    }
}

- (void)setRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem{
    
    if (iOS7_OR_LATER) {
        
        UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        spaceItem.width = -8;
        if (rightBarButtonItem) {
            [self setRightBarButtonItems:@[spaceItem,rightBarButtonItem]];
        }
        
    }else{
        
        [self setRightBarButtonItem:rightBarButtonItem];
    }
}

@end
