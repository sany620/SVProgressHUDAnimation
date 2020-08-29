//
//  SVProgressHUD+Loading.h
//  BuildGuard
//
//  Created by apple on 2020/8/29.
//  Copyright © 2020 com.ddg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SVProgressHUD.h>
#import <SVIndefiniteAnimatedView.h>


NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FDLoadingAnimationType) {
    FDLoadingAnimationTypeNineDots,
    FDLoadingAnimationTypeTriplePulse,
    FDLoadingAnimationTypeFiveDots,
    FDLoadingAnimationTypeRotatingSquares,
    FDLoadingAnimationTypeDoubleBounce,
    FDLoadingAnimationTypeTwoDots,
    FDLoadingAnimationTypeThreeDots,
    FDLoadingAnimationTypeBallPulse,
    FDLoadingAnimationTypeBallClipRotate,
    FDLoadingAnimationTypeBallClipRotatePulse,
    FDLoadingAnimationTypeBallClipRotateMultiple,
    FDLoadingAnimationTypeBallRotate,
    FDLoadingAnimationTypeBallZigZag,
    FDLoadingAnimationTypeBallZigZagDeflect,
    FDLoadingAnimationTypeBallTrianglePath,
    FDLoadingAnimationTypeBallScale,
    FDLoadingAnimationTypeLineScale,
    FDLoadingAnimationTypeLineScaleParty,
    FDLoadingAnimationTypeBallScaleMultiple,
    FDLoadingAnimationTypeBallPulseSync,
    FDLoadingAnimationTypeBallBeat,
    FDLoadingAnimationTypeLineScalePulseOut,
    FDLoadingAnimationTypeLineScalePulseOutRapid,
    FDLoadingAnimationTypeBallScaleRipple,
    FDLoadingAnimationTypeBallScaleRippleMultiple,
    FDLoadingAnimationTypeTriangleSkewSpin,
    FDLoadingAnimationTypeBallGridBeat,
    FDLoadingAnimationTypeBallGridPulse,
    FDLoadingAnimationTypeRotatingSandglass,
    FDLoadingAnimationTypeRotatingTrigons,
    FDLoadingAnimationTypeTripleRings,
    FDLoadingAnimationTypeCookieTerminator
};

@interface SVProgressHUD(Loading)
+ (void)svShowLoding;
+ (void)setActivityIndicatorType:(FDLoadingAnimationType)type;
+ (void)setActivityIndicatorTintColor:(UIColor* __nonnull)tintColor;
+ (void)unsetActivityIndicator;

@end

NS_ASSUME_NONNULL_END
