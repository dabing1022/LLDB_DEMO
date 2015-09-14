//
//  ViewController.m
//  LLDB_DEMO
//
//  Created by ChildhoodAndy on 15/9/14.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+FlatColor.h"

static NSString *DemoCellReuseId = @"demo_cell";
@implementation DemoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.mainView.layer.cornerRadius = 8;
    self.mainView.layer.masksToBounds = YES;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.mainView.backgroundColor = [UIColor randomColor];
}

- (void)configWithIndex:(NSInteger)index content:(NSString *)content {
    self.titleIndexLabel.text = [NSString stringWithFormat:@"%@", @(index)];
    self.contentLabel.text = content;
}

@end

@interface ViewController () {
    NSArray *_demos;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _demos = @[@"Basic",
               @"Basic100",
               @"Basic2"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _demos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DemoCellReuseId forIndexPath:indexPath];
    [(DemoTableViewCell *)cell configWithIndex:indexPath.row + 1 content:_demos[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 170;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *className = [NSString stringWithFormat:@"DemoViewController%@", @(indexPath.row + 1)];
    UIViewController *vc = [[NSClassFromString(className) alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
