//
//  JhtGradientGuidePageVC.h
//  JhtTools
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 2016/11/25.
//  Copyright © 2016年 JhtGradientGuidePageVC. All rights reserved.
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

/** 滑动到最后一张图片后出现的 <Enter>按钮 */
@property (nonatomic, strong) UIButton *enterButton;
/** 点击<跳过>/<Enter>按钮回调Block */
typedef void (^DidClickedEnter)();
/** 点击<Enter>按钮 回调 */
@property (nonatomic, strong) DidClickedEnter didClickedEnter;

/** 导页展示完成后切换至目标VC 动画时间
 *  default：0.5f
 */
@property (nonatomic, assign) CGFloat animationDuration;
/** 引导页展示完成后切换至目标VC 动画类型
 *	default：UIViewAnimationOptionTransitionCrossDissolve
 */
@property (nonatomic, assign) UIViewAnimationOptions animationOptions;

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
/***** 由于iPhone X屏幕尺寸不同于其之前屏幕尺寸比例，为保证显示效果，建议使用不同图片 *****/
/** 初始化方法
 *  imageNames：引导图片数组
 *	LRVC：引导页展示完成后出现的VC
 */
- (id)initWithGuideImageNames:(NSArray *)imageNames withLastRootViewController:(UIViewController *)LRVC;

/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 *  bgNames：背景图片名数组
 *	LRVC：引导页展示完成后出现的VC
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames withBackgroundImageNames:(NSArray *)bgNames withLastRootViewController:(UIViewController *)LRVC;

/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 *  bgNames：背景图片名数组
 *  withEnterButton：<Enter>按钮
 *	LRVC：引导页展示完成后出现的VC
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames withBackgroundImageNames:(NSArray *)bgNames withEnterButton:(UIButton *)button withLastRootViewController:(UIViewController *)LRVC;


@end
