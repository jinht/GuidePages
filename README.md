## GuidePages
#### 引导页/首次安装引导页/APP介绍页/功能介绍页

### 先上图，看一下是否符合你的场景吧！
<img src="https://raw.githubusercontent.com/jinht/GuidePages/master/ReadMEImages/Gif/first.gif"  ，width=250 height=350 />
&emsp;<img src="https://raw.githubusercontent.com/jinht/GuidePages/master/ReadMEImages/Gif/third.gif" width=250 height=350 />

### Function Description
1. 传统引导页功能；
2. 引导页之间渐变切换；
3. 个性化进入按钮实现；<br>


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

#### 3. 个性化进入按钮实现：通过相应属性设置`<跳过>`按钮和`<Enter>`按钮
```oc
/** 是否添加<跳过>按钮（默认不需要） */
@property (nonatomic, assign) BOOL isNeedSkipButton;
/** <跳过>按钮背景图片名 */
@property (nonatomic, copy) NSString *skipButtonBackgroundImageName;

/** 初始化方法
 *  coverNames：封面图片名数组（多为带文字图片）
 *  bgNames：背景图片名数组
 *  withEnterButton：<Enter>按钮
 */
- (id)initWithCoverImageNames:(NSArray *)coverNames withBackgroundImageNames:(NSArray *)bgNames withEnterButton:(UIButton *)button;
```
注：假使自己传入<跳过>按钮背景图片，需要注意一下大小，按钮大小设置是根据图片大小动态设置的。


###Remind
* ARC
* iOS >= 8.0
* iPhone \ iPad 
       

## Hope
* If you find bug when used，Hope you can Issues me，Thank you or try to download the latest code of this framework to see the BUG has been fixed or not
* If you find the function is not enough when used，Hope you can Issues me，I very much to add more useful function to this framework ，Thank you !
