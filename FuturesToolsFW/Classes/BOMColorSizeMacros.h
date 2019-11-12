
#ifndef BOMColorSizeMacros_h
#define BOMColorSizeMacros_h

/** ----------------------颜色--------------------- */
// 主色
#define KMainColor  [UIColor colorWithHexString:@"#FDB452"]
// 导航栏颜色
#define KNavBarColor [UIColor colorWithHexString:@"#FDB452"]
// 导航栏标题颜色
#define KNavBarTitleColor [UIColor blackColor]
//
// TabBar文字选中状态颜色
#define KTabBarTextSelectColor [UIColor colorWithHexString:@"#FDB452"]
// TabBar文字普通状态颜色
#define KTabBarTextNormalColor [UIColor colorWithHexString:@"#D7D7D7"]
// 分割线颜色
#define KSeparateColor [UIColor colorWithHexString:@"#DDDDDD"]
// 控制器背景色
#define KBgViewColor [UIColor colorWithHexString:@"#EEEEEE"]
// 图片占位背景色
#define KImgBgColor [UIColor colorWithHexString:@"#EFEFEF"]
// 随机颜色
#define KRandomColor  [UIColor colorWithRed:random()%255/255.0 green:random()%255/255.0 blue:random()%255/255.0 alpha:1];
// 设置十六进制颜色
#define COLOR16(colorStr) [UIColor colorWithHexString:colorStr]
// 文字颜色 #222222   #888888   #666666
#define KText2Color [UIColor colorWithHexString:@"#222222"]
#define KText6Color [UIColor colorWithHexString:@"#666666"]
#define KText8Color [UIColor colorWithHexString:@"#888888"]
#define KText9Color [UIColor colorWithHexString:@"#999999"]
#define KText3Color [UIColor colorWithHexString:@"#333333"]
// 聊天模块,未读数量
#define KBBadgeView [UIColor colorWithHexString:@"#FF3A41"]
//
//----------------------------尺寸--------------------------
// 获取对应字号的字体
#define SystemFontOfSize(size) [UIFont systemFontOfSize:size]
// 标尺图比例换算
#define PT(p)               (CGFloat)(p*(SCREEN_WIDTH/375.))
// px值转pt
#define PX(p)               (CGFloat)p*(1.0/[UIScreen mainScreen].scale)
//
#define KKScreen            [UIScreen mainScreen]
// 屏幕宽度
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
// 屏幕高度
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
// 屏幕缩放值
#define SCREEN_SCALE [UIScreen mainScreen].scale
// 屏幕尺寸适配
// 判断是否是ipad
#define isPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
// 判断iPhone4系列
#define kiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 判断iPhone5系列
#define kiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 判断iPhone6系列
#define kiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 判断iphone6+系列
#define kiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 判断iPhoneX
#define IS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 判断iPHoneXr
#define IS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 判断iPhoneXs
#define IS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 判断iPhoneXs Max
#define IS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
// 状态栏高度
#define KStatusBarHeight [UIApplication sharedApplication].statusBarFrame.size.height
// 导航栏高度
#define KNavBarHeight 44
// 状态栏+导航栏高度
#define KStatusBarAndNavBarHeight (KStatusBarHeight + KNavBarHeight)
// 标签栏高度
#define KTabBarHeight 49
/*TabBar高度*/
//#define kTabBarHeight (CGFloat)(IS_IPHONE_X?(49.0 + 34.0):(49.0))
// iPhoneX系列底部条高度
#define KBottomBarHeight 34
// iPhoneX系列底部条高度
#define KSafeBottomMargin (IS_IPHONE_X || IS_IPHONE_Xr || IS_IPHONE_Xs || IS_IPHONE_Xs_Max ? KBottomBarHeight : 0)
// iPhoneX系列底部条高度+标签栏
#define KTabBarAndSafeBottomHeight (IS_IPHONE_X || IS_IPHONE_Xr || IS_IPHONE_Xs || IS_IPHONE_Xs_Max ? KTabBarHeight + KSafeBottomMargin : KTabBarHeight)

// 色值
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define HEXCOLOR(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0 green:((float)((hex & 0xFF00) >> 8)) / 255.0 blue:((float)(hex & 0xFF)) / 255.0 alpha:1]


// ----------- 防空判断 ------------------
/** 字符串防空判断 */
#define isStrEmpty(string) (string == nil || string == NULL || (![string isKindOfClass:[NSString class]]) || ([string isEqual:@""]) || [string isEqualToString:@""] || [string isEqualToString:@" "] || ([string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0))

/** 数组防空判断 */
#define isArrEmpty(array) (array == nil || array == NULL || (![array isKindOfClass:[NSArray class]]) || array.count == 0)

/** 字典防空判断 */
#define isDictEmpty(dict) (dict == nil || dict == NULL || (![dict isKindOfClass:[NSDictionary class]]) || dict.count == 0)

// --------- 适配公共宏 ------
/** 控件缩放比例，按照宽度计算(四舍五入) */
#define SCALE_Length(l) (IS_PORTRAIT ? round((SCREEN_WIDTH/375.0*(l))) : round((SCREEN_WIDTH/667.0*(l))))

/** 是否是异形屏 */
#define IS_HETERO_SCREEN (GL_iPhone_X || GL_iPhone_X_Max)

/** 是否是竖屏 */
#define IS_PORTRAIT (([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown))

// ------- RGB color 转换 ---------------
/* 根据RGB获得颜色值 */
#define kColorRGB(r , g , b) kColorRGBA(r , g , b ,1.0f)

/* 根据RGB和alpha值获得颜色 */
#define kColorRGBA(r , g , b ,a) ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)])

// ------ 导航栏和Tabbar针对iPhone X 的适配  ------
#define Nav_topH (IS_HETERO_SCREEN ? 88.0 : 64.0)
#define Tab_H (IS_HETERO_SCREEN ? 83.0 : 49.0)
#define NavMustAdd (IS_HETERO_SCREEN ? 34.0 : 0.0)
#define TabMustAdd (IS_HETERO_SCREEN ? 20.0 : 0.0)
#define StatusBar_H  (IS_HETERO_SCREEN ? 44.0 : 20.0)
#define NavigationItem_H   (44.0)

// -------- 尺寸  --------------------
/* 屏幕宽 */
#define SCREEN_WIDTH   ([UIScreen mainScreen].bounds.size.width)

/* 屏幕高 */
#define SCREEN_HEIGHT  ([UIScreen mainScreen].bounds.size.height)

// --------- 手机尺寸型号 --------
#define GL_iPhone_4x        (SCREEN_WIDTH == 320 && SCREEN_HEIGHT == 480)
#define GL_iPhone_5x        (SCREEN_WIDTH == 320 && SCREEN_HEIGHT == 568)
#define GL_iPhone_6x        (SCREEN_WIDTH == 375 && SCREEN_HEIGHT == 667)
#define GL_iPhone_plus      (SCREEN_WIDTH == 414 && SCREEN_HEIGHT == 736)
#define GL_iPhone_X         (SCREEN_WIDTH == 375 && SCREEN_HEIGHT == 812)   // iPhone X,    iPhone XS
#define GL_iPhone_X_Max     (SCREEN_WIDTH == 414 && SCREEN_HEIGHT == 896)   // iPhone XR,   iPhone XS Max


// ---------- 版本号相关 ---------
/* 当前版本号 */
#define OSVERSION ([[UIDevice currentDevice].systemVersion floatValue])

// ---------- 常用颜色 -----------
#define KColorTheme                        [UIColor colorWithHex:0xFF9224]     // 主题颜色，橘黄色
#define KColorLong                         [UIColor colorWithHex:0x4FB336]     // 上涨颜色
#define KColorShort                        [UIColor colorWithHex:0xE70F56]     // 下跌颜色
#define KColorLongBG                       [UIColor colorWithHex:0xEDF7EB]     // 上涨背景颜色
#define KColorShortBG                      [UIColor colorWithHex:0xFDE7EE]     // 下跌背景颜色
#define KColorTitle_333                    [UIColor colorWithHex:0x333333]     // 用于主要文字提示，标题，重要文字
#define KColorNormalText_666               [UIColor colorWithHex:0x666666]     // 正常字体颜色，二级文字，标签栏
#define KColorTipText_999                  [UIColor colorWithHex:0x999999]     // 提示文字，提示性文字，重要级别较低的文字信息
#define KColorBorder_ccc                   [UIColor colorWithHex:0xcccccc]     // 边框颜色，提示性信息
#define KColorSeparator_eee                [UIColor colorWithHex:0xeeeeee]     // 分割线颜色，宽度1像素
#define KColorGap                          [UIColor colorWithHex:0xf9f9f9]     // 背景间隔色彩
#define KColorBackGround                   [UIColor colorWithHex:0xffffff]     // 白色背景色
#define KColorText_000000                  [UIColor colorWithHex:0x000000]     // 黑色
// 弱引用/强引用
#define WeakSelf(type)  __weak typeof(type) weak##type = type;
#define StrongSelf(type)  __strong typeof(type) strong##type = weak##type;

// 字符串是否为空
#define kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )

#endif /* jcqh_ColorSizeMacros_h */
