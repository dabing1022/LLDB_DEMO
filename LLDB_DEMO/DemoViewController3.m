//
//  DemoViewController3.m
//  LLDB_DEMO
//
//  Created by ChildhoodAndy on 15/9/15.
//  Copyright © 2015年 🚖didapinche.com. All rights reserved.
//

#import "DemoViewController3.h"

@interface DemoViewController3 ()

@end

@implementation DemoViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    UILabel *label = [[UILabel alloc] initWithFrame:view.bounds];
    label.text = @"Dangdangdangdang";
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor whiteColor];
    [view addSubview:label];
    
    
    // exp variable
    // eidt breakpoint
    // exception breakpoint
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 10; ++i) {
        [arr addObject:@(i)];
    }
//    NSInteger outOfRangeIndexNum = arr[10];
}

// the power of debug command:expression(exp/expr)
// @see DemoViewController2 breakpoint in -testHandler
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"JustTestNotify" object:nil];
}

@end
