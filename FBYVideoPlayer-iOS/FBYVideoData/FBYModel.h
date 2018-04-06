//
//  FBYModel.h
//  FBYVideoPlayer-iOS
//
//  Created by fby on 2018/4/3.
//  Copyright © 2018年 FBYVideoPlayer-iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FBYModel : UIControl

//0 - 1. 播放进度
@property (nonatomic, assign) CGFloat value;
//0 - 1. 缓冲进度
@property (nonatomic, assign) CGFloat bufferProgress;
//轨道高度
@property (nonatomic, assign) CGFloat trackHeight;
//滑块触发大小的宽高
@property (nonatomic, assign) CGFloat thumbTouchSize;
//滑块可视大小的宽高
@property (nonatomic, assign) CGFloat thumbVisibleSize;
//轨道的颜色
@property (nonatomic, strong) UIColor *trackColor;
//缓冲的颜色
@property (nonatomic, strong) UIColor *bufferColor;
//播放进度的颜色
@property (nonatomic, strong) UIColor *thumbValueColor;

//可为滑块设置图片
- (void)setThumbImage:(UIImage *)thumbImage forState:(UIControlState)state;

//横竖屏转换
- (void)fullScreenChanged:(BOOL)isFullScreen;


@end
