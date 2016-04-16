//
//  XMTabBarController.h
//  XMTabBar
//
//  Created by 任长平 on 15/12/18.
//  Copyright © 2015年 任长平. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol XMTabBarControllerDelegate <NSObject>
@optional
-(void)xm_selectedViewController:(UIViewController *)viewController;
@end



@interface XMTabBarController : UITabBarController

/** 选中状态的item，默认选中的是第0个 */
@property (nonatomic, assign) NSInteger selectedItem;

/** 是否显示中间按钮，默认为NO */
@property (nonatomic, assign) BOOL showCenterItem;

/** 中间按钮的图片 */
@property (nonatomic, strong) UIImage * centerItemImage;

/** 中间按钮控制的试图控制器 */
@property (nonatomic, strong) UIViewController * xm_centerViewController;

/** 文字颜色 */
@property (nonatomic, strong) UIColor * textColor;

@property (nonatomic, weak) id<XMTabBarControllerDelegate>XMDelegate;



/**
 *  指定item设置badgeValue
 *
 *  @param value badgeValue的值
 *  @param index 第几个
 */
-(void)tabBarBadgeValue:(NSUInteger)value item:(NSInteger)index;

/**
 *  隐藏或显示TabBar
 */
-(void)xmTabBarHidden:(BOOL)hidden animated:(BOOL)animated;

/**
 *  隐藏或显示中间试图控制器
 */
-(void)showCenterViewController:(BOOL)show animated:(BOOL)animated;


/**
 *  初始化tabbar
 *
 *  @param selected 选中时的图片
 *  @param normal   普通状态下的图片
 *  @param titles   标题
 *
 */
- (id)initWithTabBarSelectedImages:(NSMutableArray *)selected
                      normalImages:(NSMutableArray *)normal
                            titles:(NSMutableArray *)titles;





@end












