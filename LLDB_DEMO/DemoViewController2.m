//
//  DemoViewController2.m
//  LLDB_DEMO
//
//  Created by ChildhoodAndy on 15/9/15.
//  Copyright © 2015年 🚖didapinche.com. All rights reserved.
//

#import "DemoViewController2.h"

@interface DemoViewController2 () {
    UIView *_greenView;
    UILabel *_labelInGreenView;
    UIView *_redView;
}

@end


// view debug
@implementation DemoViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _greenView = [[UIView alloc] initWithFrame:CGRectMake(20, 120, 100, 30)];
    _greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_greenView];
    _greenView.alpha = 1.0;
    
    _labelInGreenView = [[UILabel alloc] initWithFrame:_greenView.bounds];
    _labelInGreenView.textAlignment = NSTextAlignmentLeft;
    _labelInGreenView.textColor = [UIColor blackColor];
    _labelInGreenView.font = [UIFont systemFontOfSize:12];
    [_greenView addSubview:_labelInGreenView];
    
    _redView = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 300, 50)];
    _redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_redView];
    
    [self updateLabelInGreeenView:@"Hello, where are you?"];
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [testBtn setTitle:@"test" forState:UIControlStateNormal];
    [self.view addSubview:testBtn];
    testBtn.frame = CGRectMake(100, 300, 100, 30);
    [testBtn addTarget:self action:@selector(testHandler:) forControlEvents:UIControlEventTouchUpInside];
}

// frame?
// hidden?justTestNofifyHandler
// alpha?
// superview frame/hidden/alpha/hierarchy

- (void)updateLabelInGreeenView:(NSString *)content {
    _labelInGreenView.text = content;
}

- (void)testHandler:(UIButton *)button {
    NSLog(@"I am sorry, nothing to do:) ");
}

@end
