//
//  UIAlertView+Category.m
//  AlertTool
//
//  Created by X on 2017/8/10.
//  Copyright © 2017年 X. All rights reserved.
//

#import "UIAlertView+Category.h"
#import <objc/runtime.h>

static const char *alertKey;
static const char *alertBlockKey;

@implementation UIAlertView (Category)

- (void)showAlertView:(alertBlock)block{
    if (block) {
        objc_setAssociatedObject(self, &alertKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        self.delegate = self;
    }
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    alertBlock block = objc_getAssociatedObject(self, &alertKey);
    if (block) {
        block(buttonIndex);
    }
}


@end
