//
//  FindSegment.m
//  美酒生活
//
//  Created by again on 2016/9/27.
//  Copyright © 2016年 again. All rights reserved.
//

#import "FindSegment.h"

@implementation FindSegment


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *array1 = @[@"yueju"];
        NSArray *array2 = @[@"yueju"];
        [self setTitle:@"yueju" forSegmentAtIndex:0];
        [self setTitle:@"jiuwo" forSegmentAtIndex:1];
        self.layer.cornerRadius = 10;
        self.layer.masksToBounds = YES;
        self.backgroundColor = [UIColor redColor];
//        [UISegmentedControl alloc] initWithItems:<#(nullable NSArray *)#>]÷
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}



@end
