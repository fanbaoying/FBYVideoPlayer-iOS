//
//  NSString+FBYFileHandlePath.m
//  FBYVideoPlayer-iOS
//
//  Created by fby on 2018/4/3.
//  Copyright © 2018年 FBYVideoPlayer-iOS. All rights reserved.
//

#import "NSString+FBYFileHandlePath.h"

@implementation NSString(FBYFileHandlePath)

+ (NSString *)tempFilePathWithFileName:(NSString *)name {
    return [[NSHomeDirectory( ) stringByAppendingPathComponent:@"tmp"] stringByAppendingPathComponent:name];
}

+ (NSString *)tempFilePathWithUrlString:(NSString *)urlString{
    NSString *name = [[urlString componentsSeparatedByString:@"/"] lastObject];
    return [[NSHomeDirectory( ) stringByAppendingPathComponent:@"tmp"] stringByAppendingPathComponent:name];
}

+ (NSString *)cacheFilePathWithName:(NSString *)name{
    NSString *cachePath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
    NSString *cacheFolderPath = [cachePath stringByAppendingPathComponent:[NSString stringWithFormat:@"/Moment_Videos/%@",name]];
    return cacheFolderPath;
}

+ (NSString *)cacheFilePathWithUrlString:(NSString *)urlString{
    NSString *name = [[urlString componentsSeparatedByString:@"/"] lastObject];
    NSString *cachePath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
    NSString *cacheFolderPath = [cachePath stringByAppendingPathComponent:[NSString stringWithFormat:@"/Moment_Videos/%@",name]];
    return cacheFolderPath;
}

+ (NSString *)fileNameWithUrlString:(NSString *)url{
    return [[url componentsSeparatedByString:@"/"] lastObject];
}

@end
