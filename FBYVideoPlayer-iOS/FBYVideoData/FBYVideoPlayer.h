//
//  FBYVideoPlayer.h
//  FBYVideoPlayer-iOS
//
//  Created by fby on 2018/4/2.
//  Copyright © 2018年 FBYVideoPlayer-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class FBYVideoPlayer;

@protocol FBYVideoPlayerDelegate <NSObject>

@optional

- (void)videoPlayerDidBackButtonClick;
- (void)videoPlayerDidFullScreenButtonClick;

@end

@interface FBYVideoPlayer : NSObject

//显示顶部控制视频界面view   default is YES
@property (nonatomic, assign) BOOL showTopControl;
//显示底部控制视频界面view   default is YES
@property (nonatomic, assign) BOOL showBototmControl;

@property (nonatomic, weak)   id <FBYVideoPlayerDelegate> delegate;

// 静音 default is NO
@property (nonatomic, assign) BOOL mute;

// default is YES
@property (nonatomic, assign) BOOL stopWhenAppDidEnterBackground;

// 可给定video尺寸大小,若尺寸超过view大小时作截断处理
@property (nonatomic, assign) CGSize videoSize;


- (void)playWithUrl:(NSString *)url showView:(UIView *)showView;

//播放
- (void)playVideo;
//暂停
- (void)pauseVideo;
//停止播放/清空播放器
- (void)stopVideo;

//横竖屏转换
- (void)fullScreenChanged:(BOOL)isFullScreen;


@end
