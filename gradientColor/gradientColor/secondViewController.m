//
//  secondViewController.m
//  gradientColor
//
//  Created by xjw on 2017/3/28.
//  Copyright © 2017年 cn.com.rockmobile. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()
@property (nonatomic, strong) NSTimer  *timer;

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addGradientLayer];
    // Do any additional setup after loading the view.
}


-(void)addGradientLayer
{
    CAGradientLayer *colorLayer = [CAGradientLayer layer];
    colorLayer.frame = (CGRect){CGPointZero,CGSizeMake(200, 200)};
    colorLayer.position = self.view.center;
    [self.view.layer addSublayer:colorLayer];
    
    //颜色分配
    colorLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor grayColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor];
    colorLayer.locations = @[@(0.25),@(0.5),@(0.75)];
    colorLayer.startPoint = CGPointMake(0, 0);
    colorLayer.endPoint = CGPointMake(1, 0);
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.5 repeats:YES block:^(NSTimer *timer){
        static CGFloat length = -0.1f;
        if (length >= 1.1) {
            length = - 0.1f;
            [CATransaction setDisableActions:YES];
            colorLayer.locations = @[@(length),@(length + 0.1),@(length + 0.15)];
        }else{
            [CATransaction setDisableActions:NO];
            colorLayer.locations = colorLayer.locations = @[@(length),@(length + 0.1),@(length + 0.15)];
        }
        length += 0.1f;
    }];
    [_timer fire];
    
    
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
