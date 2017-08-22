//
//  ViewController.m
//  JhtGuidePages
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 2016/11/28.
//  Copyright © 2016年 JhtGradientGuidePageVC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置背景颜色
    self.view.backgroundColor = [UIColor orangeColor];
    
    UILabel *textLable = [[UILabel alloc] init];
    textLable.text = @"已经进入App首页喽";
    textLable.textColor = [UIColor whiteColor];
    textLable.font = [UIFont boldSystemFontOfSize:18];
    [textLable sizeToFit];
    textLable.center = self.view.center;
    [self.view addSubview:textLable];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
