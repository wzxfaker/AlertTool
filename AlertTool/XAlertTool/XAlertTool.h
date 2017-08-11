//
//  XAlertTool.h
//  AlertTool
//
//  Created by X on 2017/8/10.
//  Copyright © 2017年 X. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XAlertTool : NSObject

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirmBlock:(void (^)())confirmBlock cancelBlock:(void (^)())cancelBlock;

@end
