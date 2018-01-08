//
//  ViewController.m
//  KLine_test
//
//  Created by diaochuan on 2018/1/5.
//  Copyright © 2018年 diaochuan. All rights reserved.
//

#import "DCStockListViewController.h"
#import "DCStockDetailViewController.h"

#import "DCGlobalFunc.h"

@interface DCStockListViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation DCStockListViewController
// MARK: - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.title = @"自选列表";
}

// MARK: - Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    cell.textLabel.text = @"平安银行";
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DCStockDetailViewController  *stockDetailVC = [DCStockDetailViewController new];
    stockDetailVC.stockName = @"平安银行";
    
    [self.navigationController pushViewController:stockDetailVC animated:YES];
}
// MARK: - Private
- (void)setupUI{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}
// MARK: - Lazy
- (UITableView *)tableView {
    if (nil == _tableView) {
        _tableView = [UITableView new];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        _tableView.frame = CGRectMake(0, 0, screen_width(), screen_height() - navbar_height());
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }else{
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
    return _tableView;
}


@end
