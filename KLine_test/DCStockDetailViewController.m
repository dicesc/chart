//
//  StockDetailViewController.m
//  KLine_test
//
//  Created by diaochuan on 2018/1/5.
//Copyright © 2018年 diaochuan. All rights reserved.
//

#import "DCStockDetailViewController.h"

@interface DCStockDetailViewController ()

@end

@implementation DCStockDetailViewController
//MARK: - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.title = self.stockName;
}

//MARK: - Delegate

//MARK: - Public

//MARK: - Private
- (void)setupUI{
    self.view.backgroundColor = [UIColor whiteColor];
}
//MARK: - Setter

//MARK: - Getter

@end
