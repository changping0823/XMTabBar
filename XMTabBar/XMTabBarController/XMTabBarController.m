//
//  XMTabBarController.m
//  XMTabBar
//
//  Created by 任长平 on 15/12/18.
//  Copyright © 2015年 任长平. All rights reserved.
//

#import "XMTabBarController.h"
#import "XMTabBar.h"



#pragma mark -  @implementation XMTabBarController

@interface XMTabBarController()<TabBarViewDelegate>
@property (nonatomic, strong)XMTabBar * tabBarView;
/**
 *  记录上次点击按钮的索引
 */
@property (nonatomic, assign) NSUInteger lastIndex;
@end


@implementation XMTabBarController

- (id)initWithTabBarSelectedImages:(NSMutableArray *)selected
                      normalImages:(NSMutableArray *)normal
                            titles:(NSMutableArray *)titles{
    if ([super init]) {
        
        self.tabBarView = [[XMTabBar alloc]initWithItemSelectedImages:selected normalImages:normal titles:titles];
        self.tabBarView.backgroundColor = [UIColor whiteColor];
        self.tabBarView.delegate = self;
        [self.view addSubview:self.tabBarView];
        self.tabBarView.itemSelectedIndex = 0;

    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    [self.tabBar removeFromSuperview];
}

-(void)tabBarBadgeValue:(NSUInteger)value item:(NSInteger)index{
    [self.tabBarView tabBarBadgeValue:value item:index];
}


#pragma mark - 初始化数据
-(void)setShowCenterItem:(BOOL)showCenterItem{
    _showCenterItem = showCenterItem;
    self.tabBarView.showCenter = _showCenterItem;
}
-(void)setCenterItemImage:(UIImage *)centerItemImage{
    _centerItemImage = centerItemImage;
    self.tabBarView.centerImage = centerItemImage;
}
-(void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    self.tabBarView.textColor = _textColor;
}

-(void)setSelectedItem:(NSInteger)selectedItem{
    _selectedItem = selectedItem;
    self.selectedIndex = _selectedItem;
    self.tabBarView.itemSelectedIndex = _selectedItem;
}

-(void)setXm_centerViewController:(UIViewController *)xm_centerViewController{
    _xm_centerViewController = xm_centerViewController;
}




#pragma mark - TabBarViewDelegate
-(void)tabBarViewSelectedItem:(NSInteger)index{
    self.lastIndex = index;
    self.selectedIndex = index;
}
-(void)tabBarViewCenterItemClick:(UIButton *)button{
    [self presentViewController:_xm_centerViewController animated:YES completion:nil];
}
#pragma mark - 共有方法
-(void)showCenterViewController:(BOOL)show animated:(BOOL)animated{
    
    if (show) {
        [self presentViewController:_xm_centerViewController animated:animated completion:nil];
        return;
    }
    [self xmTabBarHidden:NO animated:YES];
    [self dismissViewControllerAnimated:animated completion:nil];
}

-(void)xmTabBarHidden:(BOOL)hidden animated:(BOOL)animated{
    
    NSTimeInterval duration;
    animated == YES?duration = 0.24:0;
    
    [UIView animateWithDuration:duration animations:^{
        if (hidden) {
            self.tabBarView.frame = CGRectMake(0, SCREENHEIGHT + 50, SCREENWIDTH, 49);
        }else{
            self.tabBarView.frame = CGRectMake(0, SCREENHEIGHT-49, SCREENWIDTH, 49);
        }
    } completion:^(BOOL finished) {
        
    }];
}


@end
















