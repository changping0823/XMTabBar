//
//  XMThreeViewController.m
//  XMTabBar
//
//  Created by 任长平 on 15/12/18.
//  Copyright © 2015年 任长平. All rights reserved.
//

#import "XMThreeViewController.h"
#import "XMFiveViewController.h"
#import "AppDelegate.h"

@interface XMThreeViewController ()

@end

@implementation XMThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)buttonClick:(id)sender {
    
    AppDelegate * app = [UIApplication sharedApplication].delegate;
    XMFiveViewController * fiveVC = [[XMFiveViewController alloc]init];
    [app.tabBar xmTabBarHidden:YES animated:YES];
    [self.navigationController pushViewController:fiveVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
