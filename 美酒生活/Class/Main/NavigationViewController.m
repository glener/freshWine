//
//  NavigationViewController.m
//  美酒生活
//
//  Created by again on 2016/9/27.
//  Copyright © 2016年 again. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


+ (void)initialize
{
    NSString *bgName = [NSString stringWithFormat:@"heaer-bg"];
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:bgName] forBarMetrics:UIBarMetricsDefault];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    [navBar setTitleTextAttributes:attrs];
    navBar.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem *barButton = [UIBarButtonItem appearance];
    NSMutableDictionary *barAttrs = [NSMutableDictionary dictionary];
    barAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    barAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [barButton setTitleTextAttributes:barAttrs forState:UIControlStateNormal];
    
    
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

@end
