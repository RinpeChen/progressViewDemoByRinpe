//
//  ViewController.m
//  CALayer定制下载进度条控件
//
//  Created by RinpeChen on 16/1/2.
//  Copyright © 2016年 rinpe. All rights reserved.
//

#import "ViewController.h"
#import "RPProgressView.h"

@interface ViewController ()
@property (nonatomic, weak) RPProgressView *progressView;
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    RPProgressView *progressView = [[RPProgressView alloc] init];
    progressView.frame = CGRectMake(0, 100, self.view.frame.size.width, 2);
    [self.view addSubview:progressView];
    self.progressView = progressView;
    
    // 创建定时器模拟进度改变
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                      target:self
                                                    selector:@selector(layerAnimate)
                                                    userInfo:nil
                                                     repeats:YES];
}

// 执行隐式动画动画
- (void)layerAnimate
{
    self.progressView.progressValue = arc4random() % 100 / 100.0;
    self.progressView.progressColor = [UIColor colorWithRed:arc4random() % 255 / 255.0
                                                      green:arc4random() % 255 / 255.0
                                                       blue:arc4random() % 255 / 255.0
                                                      alpha:1.0];
}

- (void)viewWillDisappear:(BOOL)animated
{
    // 销毁定时器
    [self.timer invalidate];
}

@end
