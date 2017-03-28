//
//  ViewController.m
//  gradientColor
//
//  Created by xjw on 2017/3/28.
//  Copyright © 2017年 cn.com.rockmobile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView * view = [[UIView alloc]init];
    
    self.tableView.tableFooterView = view;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
