//
//  FBYVideoPlayerView.h
//  FBYVideoPlayer-iOS
//
//  Created by fby on 2018/4/2.
//  Copyright © 2018年 FBYVideoPlayer-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "FBYModel.h"

@interface FBYVideoPlayerView : UIView

//播放/暂停
@property (nonatomic, copy)  void (^playButtonClick_block)(BOOL selected);

//拖动滑块
@property (nonatomic, copy)  void (^sliderTouchEnd_block)(CGFloat time);

//快进快退
@property (nonatomic, copy)  void (^fastFastForwardAndRewind_block)(CGFloat time);

//返回
@property (nonatomic, copy)  void (^backButtonClick_block)(void);

//横屏播放
@property (nonatomic, copy)  void (^fullScreenButtonClick_block)(void);

@property (nonatomic, assign) CGFloat  currentTime;
@property (nonatomic, assign) CGFloat  totalTime;

//播放进度
@property (nonatomic, assign) CGFloat  playValue;

//缓冲进度
@property (nonatomic, assign) CGFloat  progress;

//播放器调用方法
- (void)videoPlayerDidLoading;

- (void)videoPlayerDidBeginPlay;

- (void)videoPlayerDidEndPlay;

- (void)videoPlayerDidFailedPlay;

//外部方法播放
- (void)playerControlPlay;
//外部方法暂停
- (void)playerControlPause;

//横竖屏转换
- (void)fullScreenChanged:(BOOL)isFullScreen;


@end
