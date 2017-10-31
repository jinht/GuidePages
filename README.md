## GuidePages
#### boot page / first install guide page / APP introduction page / function introduction page


### first on the map, look at whether you meet the scene!
lt; / RTI & githubusercontent.com/jinht/GuidePages/master/ReadMEImages/Gif/third.gif "width = 230 height = 410 />


### Function Description
1. Traditional boot page function
2. Gradient switch between guide pages
3. Simple and personalized settings UI and switch animation


### How to use
#### 1. Traditional boot page function: by passing in the picture name array can be
`` `oc
/ ** initialization method
 * coverNames: cover picture name array (mostly with text picture)
 * /
- (id) initWithCoverImageNames: (NSArray *) coverNames;
`` ``

#### 2. Tap between the tap switch: through the incoming cover picture name array (mostly with text picture) and the background picture name array can be
`` `oc
/ ** initialization method
 * coverNames: cover picture name array (mostly with text picture)
 * bgNames: background image name array
 * /
- (id) initWithCoverImageNames: (NSArray *) coverNames withBackgroundImageNames: (NSArray *) bgNames;
`` ``

#### 3 Simple personalized UI settings and switch animation
##### 3.1 Setting the `<Enter>` button allows you to pass in your own custom `<Enter>` button (the button frame can also be customized)
`` `oc
/ ** initialization method
 * coverNames: cover picture name array (mostly with text picture)
 * bgNames: background image name array
 * withEnterButton: <Enter> button
 * LRVC: VC appears after the boot page is displayed
 * /
- (id) initWithCoverImageNames: (NSArray *) coverNames withBackgroundImageNames: (NSArray *) bgNames withEnterButton: (UIButton *) button withLastRootViewController: (UIViewController *) LRVC;
`` ``

##### 3.2 When the guide page is displayed, switch to the target VC animation
`` `oc
/ ** After the guide page is displayed, switch to the target VC animation time
 * default: 0.5f
 * /
@property (nonatomic, assign) CGFloat animationDuration;
/ ** After the guide page is displayed, switch to the target VC animation type
 * default: UIViewAnimationOptionTransitionCrossDissolve
 * /
@property (nonatomic, assign) UIViewAnimationOptions animationOptions;
`` ``

##### 3.3 Set `pageControl`, you can set the pageControl with the following parameters
`` `oc
/ ** whether to hide pageControl (default is not hidden) * /
@property (nonatomic, assign) BOOL isHiddenPageControl;
/ ** The Y coordinate of the pageControl (default distance 30.0) * /
@property (nonatomic, assign) CGFloat pageControlY;
/ ** pageControl's pageIndicatorTintColor (default [UIColor grayColor]) * /
@property (nonatomic, strong) UIColor * pageIndicatorTintColor;
`` ``

##### 3.4 Set the `<Skip>` button
`` `oc
/ ** whether to add <skip> button (not required by default) * /
@property (nonatomic, assign) BOOL isNeedSkipButton;
/ ** <skip> button background image name * /
@property (nonatomic, copy) NSString * skipButtonBackgroundImageName;
`` ``
Note: If you pass in the <skip> button background image, you need to pay attention to the size, button size settings are dynamically set according to the size of the picture
    

### Remind
* ARC
* iOS> = 8.0
* iPhone \ iPad
       

## Hope
* If you find bug when used, Hope you can Issues me, Thank you or try to download the latest code of this framework to see the BUG has been fixed or not
* If you find the function is not enough when used, Hope you can Issues me, I very much to add more useful function to this framework, Thank you!


# English Version:
## GuidePages
#### boot page / first install guide page / APP introduction page / function introduction page


### first on the map, look at whether you meet the scene!
lt; / RTI & githubusercontent.com/jinht/GuidePages/master/ReadMEImages/Gif/third.gif "width = 230 height = 410 />


### Function Description
1. Traditional boot page function
2. Gradient switch between guide pages
3. Simple and personalized settings UI and switch animation


### How to use
#### 1. Traditional boot page function: by passing in the picture name array can be
`` `oc
/ ** initialization method
 * coverNames: cover picture name array (mostly with text picture)
 * /
- (id) initWithCoverImageNames: (NSArray *) coverNames;
`` ``

#### 2. Tap between the tap switch: through the incoming cover picture name array (mostly with text picture) and the background picture name array can be
`` `oc
/ ** initialization method
 * coverNames: cover picture name array (mostly with text picture)
 * bgNames: background image name array
 * /
- (id) initWithCoverImageNames: (NSArray *) coverNames withBackgroundImageNames: (NSArray *) bgNames;
`` ``

#### 3 Simple personalized UI settings and switch animation
##### 3.1 Setting the `<Enter>` button allows you to pass in your own custom `<Enter>` button (the button frame can also be customized)
`` `oc
/ ** initialization method
 * coverNames: cover picture name array (mostly with text picture)
 * bgNames: background image name array
 * withEnterButton: <Enter> button
 * LRVC: VC appears after the boot page is displayed
 * /
- (id) initWithCoverImageNames: (NSArray *) coverNames withBackgroundImageNames: (NSArray *) bgNames withEnterButton: (UIButton *) button withLastRootViewController: (UIViewController *) LRVC;
`` ``

##### 3.2 When the guide page is displayed, switch to the target VC animation
`` `oc
/ ** After the guide page is displayed, switch to the target VC animation time
 * default: 0.5f
 * /
@property (nonatomic, assign) CGFloat animationDuration;
/ ** After the guide page is displayed, switch to the target VC animation type
 * default: UIViewAnimationOptionTransitionCrossDissolve
 * /
@property (nonatomic, assign) UIViewAnimationOptions animationOptions;
`` ``

##### 3.3 Set `pageControl`, you can set the pageControl with the following parameters
`` `oc
/ ** whether to hide pageControl (default is not hidden) * /
@property (nonatomic, assign) BOOL isHiddenPageControl;
/ ** The Y coordinate of the pageControl (default distance 30.0) * /
@property (nonatomic, assign) CGFloat pageControlY;
/ ** pageControl's pageIndicatorTintColor (default [UIColor grayColor]) * /
@property (nonatomic, strong) UIColor * pageIndicatorTintColor;
`` ``

##### 3.4 Set the `<Skip>` button
`` `oc
/ ** whether to add <skip> button (not required by default) * /
@property (nonatomic, assign) BOOL isNeedSkipButton;
/ ** <skip> button background image name * /
@property (nonatomic, copy) NSString * skipButtonBackgroundImageName;
`` ``
Note: If you pass in the <skip> button background image, you need to pay attention to the size, button size settings are dynamically set according to the size of the picture
    

### Remind
* ARC
* iOS> = 8.0
* iPhone \ iPad
       

## Hope
* If you find bug when used, Hope you can Issues me, Thank you or try to download the latest code of this framework to see the BUG has been fixed or not
* If you find the function is not enough when used, Hope you can Issues me, I very much to add more useful function to this framework, Thank you!
