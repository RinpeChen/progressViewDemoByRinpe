//
//  RPProgressView.m
//  CALayer定制下载进度条控件
//
//  Created by RinpeChen on 16/1/2.
//  Copyright © 2016年 rinpe. All rights reserved.
//

#import "RPProgressView.h"

@interface RPProgressView ()

@property (nonatomic, strong) CALayer *progressLayer;

@end

@implementation RPProgressView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化layer
        self.progressLayer = [CALayer layer];
        self.progressLayer.backgroundColor = [UIColor redColor].CGColor;
        self.progressLayer.frame = CGRectMake(0, 0, 0, frame.size.height);
        
        // 添加子layer
        [self.layer addSublayer:self.progressLayer];
    }
    return self;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    self.progressLayer.frame = CGRectMake(0, 0, 0, frame.size.height);
}

// 设置进度值
- (void)setProgressValue:(CGFloat)progressValue
{
    _progressValue = progressValue;
    
    if (progressValue <= 0) {
        self.progressLayer.frame = CGRectMake(0, 0, 0, self.frame.size.height);
    } else if (progressValue <= 1) {
        self.progressLayer.frame = CGRectMake(0, 0, self.frame.size.width * progressValue, self.frame.size.height);
    } else {
        self.progressLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    }
}

// 设置进度条颜色
- (void)setProgressColor:(UIColor *)progressColor
{
    _progressColor = progressColor;
    
    self.progressLayer.backgroundColor = progressColor.CGColor;
}

@end
