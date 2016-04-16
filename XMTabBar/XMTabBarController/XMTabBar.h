//
//  XMTabBar.h
//  XMTabBar
//
//  Created by 任长平 on 16/4/16.
//  Copyright © 2016年 任长平. All rights reserved.
//

#import <UIKit/UIKit.h>


#define SCREENWIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREENHEIGHT ([UIScreen mainScreen].bounds.size.height)

#pragma mark - @interface TabBarView

@protocol TabBarViewDelegate <NSObject>

-(void)tabBarViewSelectedItem:(NSInteger)index;
-(void)tabBarViewCenterItemClick:(UIButton *)button;

@end

@interface XMTabBar : UIView

@property (nonatomic, strong) UIImage * backgroundImage;
@property (nonatomic, strong) UIImage * centerImage;
@property (nonatomic, strong) UIColor * textColor;
@property (nonatomic, assign) NSUInteger badgeValue;
@property (nonatomic, assign) NSInteger itemSelectedIndex;
@property (nonatomic, strong) UIButton * centerButton;
@property (nonatomic, assign) BOOL showCenter;

@property (nonatomic, weak) id<TabBarViewDelegate>delegate;

- (id)initWithItemSelectedImages:(NSMutableArray *)selected
                    normalImages:(NSMutableArray *)normal
                          titles:(NSMutableArray *)titles;

-(void)tabBarBadgeValue:(NSUInteger)value item:(NSInteger)index;

@end



@interface XMButton : UIButton
@property (nonatomic, assign) NSUInteger badgeValue;
+ (instancetype)xm_shareButton;
@end





