//
//  NewHeaderView.m
//  美酒生活
//
//  Created by again on 2016/10/8.
//  Copyright © 2016年 again. All rights reserved.
//

#import "NewHeaderView.h"

@interface NewHeaderView ()


@end

@implementation NewHeaderView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:frame];
    _scrollView = scrollView;
    CGFloat imageW = frame.size.width;
    CGFloat imageH = frame.size.height;
    CGFloat imageY = 0;
    
    for (int i = 0; i < 4; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        CGFloat imageX = i * imageW;
        imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
        
        NSString *name = [NSString stringWithFormat:@"dimple-user-bg.jpg"];
        imageView.image = [UIImage imageNamed:name];
        [_scrollView addSubview:imageView];
    }
    
    CGFloat contentW = 4 * imageW;
    _scrollView.contentSize = CGSizeMake(contentW, 0);
    
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.pagingEnabled = YES;
    
    
    
    
    [self addSubview:_scrollView];
    
    return self;
}


@end
