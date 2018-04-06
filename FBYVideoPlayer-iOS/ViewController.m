//
//  ViewController.m
//  FBYVideoPlayer-iOS
//
//  Created by fby on 2018/4/2.
//  Copyright © 2018年 FBYVideoPlayer-iOS. All rights reserved.
//

#import "ViewController.h"

#import "FBYVideoPlayer.h"

@interface ViewController ()<FBYVideoPlayerDelegate>

@property (nonatomic ,strong) FBYVideoPlayer *videoPlayer;
@property (nonatomic ,strong) UIView *videoPlayBGView;
@property (nonatomic ,copy)   NSString*videoUrl;

@end

@implementation ViewController{
    BOOL _isHalfScreen;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"视频播放器";
    
    _isHalfScreen = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.videoPlayBGView = [[UIView alloc] initWithFrame:CGRectMake(0, 90, SCREEN_WIDTH, SCREEN_WIDTH * 0.6)];
    self.videoPlayBGView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.videoPlayBGView];
    
    self.videoUrl = @"http://static.tripbe.com/videofiles/20121214/9533522808.f4v.mp4";
    
    self.videoPlayer = [[FBYVideoPlayer alloc] init];
    self.videoPlayer.delegate = self;
    [self.videoPlayer playWithUrl:self.videoUrl showView:self.videoPlayBGView];
    
}

- (void)videoPlayerDidBackButtonClick{
    
    _isHalfScreen = !_isHalfScreen;
    
    if (_isHalfScreen) {
        [[UIDevice currentDevice]setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft]  forKey:@"orientation"];
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait] forKey:@"orientation"];
        [UIView animateWithDuration:0.5 animations:^{
            self.videoPlayBGView.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.width * 0.6);
        } completion:^(BOOL finished) {
        }];
        
        [self.videoPlayer fullScreenChanged:!_isHalfScreen];
    }else{
        [self.videoPlayer stopVideo];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
- (void)videoPlayerDidFullScreenButtonClick{
    
    _isHalfScreen = !_isHalfScreen;
    
    if (_isHalfScreen) {
        [[UIDevice currentDevice]setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft]  forKey:@"orientation"];
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait] forKey:@"orientation"];
        [UIView animateWithDuration:0.5 animations:^{
            self.videoPlayBGView.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.width * 0.6);
        } completion:^(BOOL finished) {
        }];
    }else{
        
        [[UIDevice currentDevice]setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait]  forKey:@"orientation"];
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft] forKey:@"orientation"];
        [UIView animateWithDuration:0.5 animations:^{
            self.videoPlayBGView.frame=self.view.bounds;
        } completion:^(BOOL finished) {
        }];
    }
    
    [self.videoPlayer fullScreenChanged:!_isHalfScreen];
}

- (BOOL)shouldAutorotate{
    return YES;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    if (_isHalfScreen) { //如果是iPhone,且为竖屏的时候, 只支持竖屏
        return UIInterfaceOrientationMaskPortrait;
    }else{
        return UIInterfaceOrientationMaskLandscape; //否者只支持横屏
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
