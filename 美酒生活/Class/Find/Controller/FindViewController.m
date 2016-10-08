//
//  FindViewController.m
//  美酒生活
//
//  Created by again on 2016/9/27.
//  Copyright © 2016年 again. All rights reserved.
//

#import "FindViewController.h"
#import "FindSegment.h"
#import "FindHomeView.h"

@interface FindViewController ()

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
    
    [self setupHomeView];
}

- (void)setupView
{
    NSString *str1 = @"1";
    NSString *str2 = @"2";
    
    UISegmentedControl *segement = [[UISegmentedControl alloc] initWithItems:@[str1, str2]];
    segement.frame = CGRectMake(120, 5, 100, 20);
    segement.layer.cornerRadius = 10;
    segement.layer.masksToBounds = YES;
    [self.navigationController.navigationBar addSubview:segement];
    
    
}

- (void)setupHomeView
{
        FindHomeView *homeView = [[FindHomeView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 200)];

    [self.view addSubview:homeView];
}

@end
