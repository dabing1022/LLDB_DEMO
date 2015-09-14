//
//  ViewController.h
//  LLDB_DEMO
//
//  Created by ChildhoodAndy on 15/9/14.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIView* mainView;
@property (nonatomic, weak) IBOutlet UILabel *titleIndexLabel;
@property (nonatomic, weak) IBOutlet UILabel *contentLabel;

- (void)configWithIndex:(NSInteger)index content:(NSString *)content;

@end

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

