//
//  FindHomeView.m
//  美酒生活
//
//  Created by again on 2016/10/1.
//  Copyright © 2016年 again. All rights reserved.
//

#import "FindHomeView.h"

@interface FindHomeView()
@property (weak, nonatomic) IBOutlet UILabel *riqi;

@end

@implementation FindHomeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"FindHomeView" owner:self options:nil];
    //得到第一个UIView
    UIView *tmpCustomView = [nib objectAtIndex:0];
    tmpCustomView.frame = frame;
    
    return tmpCustomView;
}

//- (void)awakeFromNib
//{
//    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"FindHomeView" owner:self options:nil];
//    //得到第一个UIView
//    UIView *tmpCustomView = [nib objectAtIndex:0];
//    tmpCustomView.frame = CGRectMake(0, 0, 300, 300);
//    [self addSubview:tmpCustomView];
//}

@end
