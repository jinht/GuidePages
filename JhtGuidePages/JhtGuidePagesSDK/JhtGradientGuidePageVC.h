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

/** 渐变背景引导页 */
@interface JhtGradientGuidePageVC : UIViewController
#pragma mark - property
#pragma mark optional
/** 是否添加<跳过>按钮
 *  default：NO
 */
@property (nonatomic, assign) BOOL isNeedSkipButton;
/** <跳过>按钮背景图片名（动态获取图片大小） */
@property (nonatomic, strong) NSString *skipButtonBackgroundImageName;

/** 滑动到最后一张图片后出现的<Enter>按钮 */
@property (nonatomic, strong) UIButton *enterButton;
/** 点击<跳过>/<Enter>按钮回调Block */
typedef void (^DidClickedEnter)();
/** 点击<Enter>按钮触发方法 */
@property (nonatomic, strong) DidClickedEnter didClickedEnter;

/** 引导页退出切换动画类型（不传值为不添加切换动画，默认不添加动画）
 *  @"fade"(建议使用) || @"moveIn" || @"push" || @"reveal"
 */
@property (nonatomic, strong) NSString *exitAnimationType;

/** 是否隐藏pageControl
 *  default：NO
 */
@property (nonatomic, assign) BOOL isHiddenPageControl;
/** pageControl的Y坐标
 *  default：25.0
 */
@property (nonatomic, assign) CGFloat pageControlY;
/** pageControl的pageIndicatorTintColor
 *  default：system color
 */
@property (nonatomic, strong) UIColor *pageIndicatorTintColor;



#pragma mark - Public Method
/** 初始化方法
 *  imageNames：引导图片数组
 */
- (id)initWithGuideImageNames:(NSArray *)imageNames;

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
