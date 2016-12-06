//
//  JhtGradientGuidePageVC.h
//  JhtTools
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 2016/11/25.
//  Copyright © 2016年 靳海涛. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 点击<跳过>/<Enter>按钮回调Block */
typedef void (^DidClickedEnter)();

/** 渐变背景引导页 */
@interface JhtGradientGuidePageVC : UIViewController
#pragma mark - property
/** 是否添加<跳过>按钮（默认不需要） */
@property (nonatomic, assign) BOOL isNeedSkipButton;
/** <跳过>按钮背景图片名（动态获取图片大小） */
@property (nonatomic, copy) NSString *skipButtonBackgroundImageName;

/** 背景图片名数组 */
@property (nonatomic, strong) NSArray *backgroundImageNames;
/** 封面图片名数组（多为带文字图片） */
@property (nonatomic, strong) NSArray *coverImageNames;

/** 滑动到最后一张图片后出现的<Enter>按钮 */
@property (nonatomic, strong) UIButton *enterButton;
/** 点击<Enter>按钮触发方法 */
@property (nonatomic, copy) DidClickedEnter didClickedEnter;

/** 引导页退出切换动画类型（不传值为不添加切换动画，默认不添加动画）
 *  @"fade" || @"moveIn" || @"push" || @"reveal" 建议使用：@"fade" 类型
 */
@property (nonatomic, copy) NSString *exitAnimationType;



#pragma mark - Public Method
/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames;

/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 *  bgNames：背景图片名数组
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames withBackgroundImageNames:(NSArray *)bgNames;

/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 *  bgNames：背景图片名数组
 *  withEnterButton：<Enter>按钮
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames withBackgroundImageNames:(NSArray *)bgNames withEnterButton:(UIButton *)button;


@end
