//
//  RPProgressView.h
//  CALayer定制下载进度条控件
//
//  Created by RinpeChen on 16/1/2.
//  Copyright © 2016年 rinpe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPProgressView : UIView
@property (nonatomic, assign) CGFloat progressValue;    // 进度值:0 ~ 1.0
@property (nonatomic, strong) UIColor *progressColor;   // 进度条颜色
@end
