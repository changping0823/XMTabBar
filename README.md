    NSMutableArray * array = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"tab_buddy_nor.png"],
                                                                    [UIImage imageNamed:@"tab_me_nor.png"],
                                                                    [UIImage imageNamed:@"tab_qworld_nor.png"],
                                                                    [UIImage imageNamed:@"tab_recent_nor.png"], nil];
    
    NSMutableArray * selectedArray = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"tab_buddy_press.png"],
                                                                            [UIImage imageNamed:@"tab_me_press.png"],
                                                                            [UIImage imageNamed:@"tab_qworld_press.png"],
                                                                            [UIImage imageNamed:@"tab_recent_press.png"], nil];
    
    NSMutableArray * titles = [[NSMutableArray alloc]initWithObjects:@"首页",
                                                                     @"消息",
                                                                     @"发现",
                                                                     @"个人", nil];
    
    XMOneViewController * vc1 = [[XMOneViewController alloc]init];
    XMTwoViewController * vc2 = [[XMTwoViewController alloc]init];
    XMThreeViewController * vc3 = [[XMThreeViewController alloc]init];
    XMFourViewController * vc4 = [[XMFourViewController alloc]init];
    
    UINavigationController * nav2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    UINavigationController * nav3 = [[UINavigationController alloc]initWithRootViewController:vc3];

        
    self.tabBar = [[XMTabBarController alloc]initWithTabBarSelectedImages:selectedArray normalImages:array titles:titles];
    self.tabBar.viewControllers = @[vc1,nav2,nav3,vc4];
    /** 设置tabBar文字颜色*/
    self.tabBar.textColor = [UIColor redColor];
    /**  是否显示中间按钮 */
    self.tabBar.showCenterItem = YES;
    /**  设置中间按钮图片 */
    self.tabBar.centerItemImage = [UIImage imageNamed:@"btn_release.png"];
    self.tabBar.xm_centerViewController = [[XMTestViewController alloc] init];
    /**  添加badgeValue */
    [self.tabBar tabBarBadgeValue:345 item:2];
    self.window.rootViewController = self.tabBar;
    
    
    
演示图如下
![image](https://github.com/changping0823/XMTabBar/blob/master/XMTabBar/ScreenShots/73af1b5b27f7882f52bcd84bd3f97178.gif)
 

