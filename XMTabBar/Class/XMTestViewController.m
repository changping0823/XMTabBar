//
//  XMTestViewController.m
//  XMTabBar
//
//  Created by 任长平 on 15/12/18.
//  Copyright © 2015年 任长平. All rights reserved.
//

#import "XMTestViewController.h"
#import "AppDelegate.h"

@interface XMTestViewController ()

@end

@implementation XMTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)buttonClick:(id)sender {
    AppDelegate * app = [UIApplication sharedApplication].delegate;
    [app.tabBar showCenterViewController:NO animated:YES];
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
