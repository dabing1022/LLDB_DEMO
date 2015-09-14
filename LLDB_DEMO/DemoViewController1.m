//
//  DemoViewController1.m
//  LLDB_DEMO
//
//  Created by ChildhoodAndy on 15/9/14.
//  Copyright © 2015年 🚖didapinche.com. All rights reserved.
//

#import "DemoViewController1.h"

@interface DemoViewController1 ()

@end

@implementation DemoViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int m = [self method1];
    int n = m * 3;
    
    int a = [self method2:100];
    
    
    
    int sum = 0;
    for (int i = 0; i < 100; ++i) {
        sum += i;
    }
    NSLog(@"sum is %d", sum);
}

- (int)method1 {
    return 100;
}

- (int)method2:(int)param1 {
    return param1 * 2;
}


@end
