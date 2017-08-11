//
//  UIAlertView+Category.h
//  AlertTool
//
//  Created by X on 2017/8/10.
//  Copyright © 2017年 X. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^alertBlock)(NSInteger selectedIndex);

@interface UIAlertView (Category)<UIAlertViewDelegate>

- (void)showAlertView:(alertBlock)block;

@end
