//
//  AppDelegate.m
//  ZzAdPage
//
//  Created by Zin_戦 on 16/6/16.
//  Copyright © 2016年 Zin戦壕. All rights reserved.

#import "AppDelegate.h"
#import "ZzAdView.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /* FullScreenAdType 全屏广告
     * LogoAdType 带logo的广告类似网易广告，值得注意的是启动图片必须带logo图
     * ImgUrl  图片url
     */
    ZzAdView * adView = [[ZzAdView alloc] initWithWindow:self.window AdShowType:FullScreenAdType andImgUrl:@"http://img2.ali213.net/picfile/News/2015/08/05/584_2015080554346834.jpg"];
    
    //各种回调
    adView.clickBlock = ^(NSInteger tag){
        switch (tag) {
            case 1100:{
                NSLog(@"点击广告回调");

            }
                break;
            case 1101:
                NSLog(@"点击跳过回调");
                break;
            case 1102:
                NSLog(@"倒计时完成后的回调");
                break;
            default:
                break;
        }
        
    };
    return YES;
}

@end
