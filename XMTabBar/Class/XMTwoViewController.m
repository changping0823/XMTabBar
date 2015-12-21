//
//  XMTwoViewController.m
//  XMTabBar
//
//  Created by 任长平 on 15/12/18.
//  Copyright © 2015年 任长平. All rights reserved.
//

#import "XMTwoViewController.h"
#import "AppDelegate.h"
#import "XMTabBarController.h"
#import "XMFiveViewController.h"

@interface XMTwoViewController ()

@end

@implementation XMTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)buttonClick:(id)sender {
    XMFiveViewController * fiveVC = [[XMFiveViewController alloc]init];
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
