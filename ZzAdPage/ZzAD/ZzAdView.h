//
//  ZzAdView.h
//  ZzAdPage
//
//  Created by Zin_戦 on 16/6/16.
//  Copyright © 2016年 Zin戦壕. All rights reserved.
//

typedef enum {
    
    FullScreenAdType = 1,//全屏的广告
    LogoAdType = 0,//带底部logo的广告
    
}AdType;
#define mainHeight      [[UIScreen mainScreen] bounds].size.height
#define mainWidth       [[UIScreen mainScreen] bounds].size.width

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"

typedef void (^ZzClick) (NSInteger tag);

@interface ZzAdView : UIView
@property (strong, nonatomic) UIImageView *aDImgView;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIButton *skipBtn;
@property (nonatomic, copy)ZzClick clickBlock;

- (instancetype)initWithWindow:(UIWindow *)window AdShowType:(NSInteger)type andImgUrl:(NSString *)url;
@end
