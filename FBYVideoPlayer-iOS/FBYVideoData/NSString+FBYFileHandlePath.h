//
//  NSString+FBYFileHandlePath.h
//  FBYVideoPlayer-iOS
//
//  Created by fby on 2018/4/3.
//  Copyright © 2018年 FBYVideoPlayer-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(FBYFileHandlePath)

//临时文件路径
+ (NSString *)tempFilePathWithFileName:(NSString *)name;
//临时文件路径
+ (NSString *)tempFilePathWithUrlString:(NSString *)urlString;

//缓存文件夹路径
+ (NSString *)cacheFilePathWithName:(NSString *)name;
//缓存文件夹路径
+ (NSString *)cacheFilePathWithUrlString:(NSString *)urlString;

//获取网址中的文件名
+ (NSString *)fileNameWithUrlString:(NSString *)url;


@end
