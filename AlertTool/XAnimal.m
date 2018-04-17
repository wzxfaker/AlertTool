//
//  XAnimal.m
//  AlertTool
//
//  Created by admin on 2018/1/25.
//  Copyright © 2018年 X. All rights reserved.
//

#import "XAnimal.h"
#import <objc/runtime.h>

void eat(id self,SEL _cmd,NSString *param){
    NSLog(@"调用eat:参数1：%@，参数2：%@，参数3：%@",self,NSStringFromSelector(_cmd),param);
}

@implementation XAnimal

//找不到方法时会调用这个类方法
+ (BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel == @selector(eat:)) {
        /**
       动态添加方法
       self cls:为哪个类添加方法
       sel  SEL:添加方法的方法编号（方法名）是什么
       IMP  IMP:方法实现
       const char * types方法类
       return 返回是否添加成功
         */
        BOOL is_success = class_addMethod(self,sel,(IMP)eat,"v@:@");
        return is_success;
    }
    return [super resolveInstanceMethod:sel];
}

@end
