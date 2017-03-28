//
//  firstViewController.m
//  gradientColor
//
//  Created by xjw on 2017/3/28.
//  Copyright © 2017年 cn.com.rockmobile. All rights reserved.
//

#import "firstViewController.h"

@interface firstViewController ()

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addGradientLayer];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)addGradientLayer
{
    CAGradientLayer *colorLayer = [CAGradientLayer layer];
    colorLayer.frame = (CGRect){CGPointZero,CGSizeMake(200, 200)};
    colorLayer.position = self.view.center;
    [self.view.layer addSublayer:colorLayer];
    
    //颜色分配
    colorLayer.colors = @[(__bridge id)[UIColor colorWithRed:0.0/255 green:222.0/255 blue:255.0/255 alpha:1.0].CGColor,(__bridge id)[UIColor colorWithRed:75.0/255 green:255.0/255 blue:249.0/255 alpha:1.0].CGColor,(__bridge id)[UIColor colorWithRed:190.0/255 green:253.0/255 blue:255.0/255 alpha:1.0].CGColor];
    
    colorLayer.startPoint = CGPointMake(0.0, 0.0);//起始点
    colorLayer.endPoint = CGPointMake(1.0, 1.0);//结束点
    colorLayer.locations = @[@(0.25),@(0.5),@(0.75)];//颜色渐变位置分割线
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
