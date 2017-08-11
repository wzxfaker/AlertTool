//
//  XAlertTool.m
//  AlertTool
//
//  Created by X on 2017/8/10.
//  Copyright © 2017年 X. All rights reserved.
//

#import "XAlertTool.h"
#import "UIAlertView+Category.h"

@implementation XAlertTool

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirmBlock:(void (^)())confirmBlock cancelBlock:(void (^)())cancelBlock{
    NSString *version = [UIDevice currentDevice].systemVersion;
    NSString *alertTitle = !title ? title : @"提示";
    NSString *alertMess = !message ? message : @"提示信息";
    if (version.floatValue >= 8.0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertTitle message:alertMess preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            confirmBlock();
        }];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            cancelBlock();
        }];
        [alertController addAction:cancelAction];
        [alertController addAction:confirmAction];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
    }else{
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle message:alertMess delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alertView showAlertView:^(NSInteger selectedIndex) {
            if (selectedIndex == 1) {
                confirmBlock();
            }else{
                cancelBlock();
            }
        }];
        
    }
}

@end
