//
//  ViewController.m
//  AlertTool
//
//  Created by X on 2017/8/10.
//  Copyright © 2017年 X. All rights reserved.
//

#import "ViewController.h"
#import "XAlertTool.h"
#import "XAnimal.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [XAlertTool showAlertWithTitle:@"" message:@"" confirmBlock:^{
        NSLog(@"点击了确定按钮");
    } cancelBlock:^{
        NSLog(@"点击了取消按钮");
    }];
    
    [[XAnimal new] performSelector:@selector(eat:) withObject:@"哈哈哈"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
