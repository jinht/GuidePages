## GuidePages
#### 引导页/首次安装引导页/APP介绍页/功能介绍页


### 先上图，看一下是否符合你的场景吧！
<img src="https://raw.githubusercontent.com/jinht/GuidePages/master/ReadMEImages/Gif/first.gif"，width=250 height=420 />
&emsp;<img src="https://raw.githubusercontent.com/jinht/GuidePages/master/ReadMEImages/Gif/third.gif"，width=250 height=420 />


### Function Description
1. 传统引导页功能；
2. 引导页之间渐变切换；
3. 简洁的个性化设置UI及切换动画。<br>


### How to use
#### 1. 传统引导页功能：通过传入图片名数组即可
```oc
/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames;
```

#### 2. 引导页之间渐变切换：通过传入封面图片名数组（多为带文字图片）和背景图片名数组即可
```oc
/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 *  bgNames：背景图片名数组
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames withBackgroundImageNames:(NSArray *)bgNames;
```

#### 3 简洁的个性化设置UI及切换动画
##### 3.1 设置`<Enter>`按钮，可以通过初始化方法传入自己定制的`<Enter>`按钮（按钮frame亦可以自己定制）
```oc
/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 *  bgNames：背景图片名数组
 *  withEnterButton：<Enter>按钮
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames withBackgroundImageNames:(NSArray *)bgNames withEnterButton:(UIButton *)button;
```

#### 3.2 设置`pageControl`，可以通过以下参数设置pageControl
```oc
/** 是否隐藏pageControl（默认不隐藏） */
@property (nonatomic, assign) BOOL isHiddenPageControl;
/** pageControl的Y坐标(默认距离底部30.0)  */
@property (nonatomic, assign) CGFloat pageControlY;
/** pageControl的pageIndicatorTintColor（默认[UIColor grayColor]） */
@property (nonatomic, strong) UIColor *pageIndicatorTintColor;
```

##### 3.3 设置`<跳过>`按钮 && `exitAnimationType`
```oc
/** 是否添加<跳过>按钮（默认不需要） */
@property (nonatomic, assign) BOOL isNeedSkipButton;
/** <跳过>按钮背景图片名 */
@property (nonatomic, copy) NSString *skipButtonBackgroundImageName;

/** 引导页退出切换动画类型（不传值为不添加切换动画，默认不添加动画）
 *  @"fade" || @"moveIn" || @"push" || @"reveal" 建议使用：@"fade" 类型
 */
@property (nonatomic, copy) NSString *exitAnimationType;
```
注：1.假使自己传入<跳过>按钮背景图片，需要注意一下大小，按钮大小设置是根据图片大小动态设置的；<br>
&emsp;&emsp;2.在添加引导页退出切换动画类型时，需要注意一下demo中`AppDelegate.m`的`didClickedEnter`block内部写法，如下：
```oc
// 添加引导页退出切换动画时，切记这样写！！！
[weakSelf.window.rootViewController.view addSubview:[[ViewController alloc] init].view];
```
    

###Remind
* ARC
* iOS >= 8.0
* iPhone \ iPad 
       

## Hope
* If you find bug when used，Hope you can Issues me，Thank you or try to download the latest code of this framework to see the BUG has been fixed or not
* If you find the function is not enough when used，Hope you can Issues me，I very much to add more useful function to this framework ，Thank you !
