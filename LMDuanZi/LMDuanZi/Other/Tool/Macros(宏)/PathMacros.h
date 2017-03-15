//
//  PathMacros.h
//  ZhongJiao
//
//  Created by 刘明 on 16/9/2.
//  Copyright © 2016年 刘明. All rights reserved.
//

#ifndef PathMacros_h
#define PathMacros_h
//文件目录
#define LMPathTemp                   NSTemporaryDirectory()
#define LMPathDocument               [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define LMPathCache                  [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define LMPathSearch                 [kPathDocument stringByAppendingPathComponent:@"Search.plist"]

#define LMPathMagazine               [kPathDocument stringByAppendingPathComponent:@"Magazine"]
#define LMPathDownloadedMgzs         [kPathMagazine stringByAppendingPathComponent:@"DownloadedMgz.plist"]
#define LMPathDownloadURLs           [kPathMagazine stringByAppendingPathComponent:@"DownloadURLs.plist"]
#define LMPathOperation              [kPathMagazine stringByAppendingPathComponent:@"Operation.plist"]

#define LMPathSplashScreen           [kPathCache stringByAppendingPathComponent:@"splashScreen"]

#endif /* PathMacros_h */
