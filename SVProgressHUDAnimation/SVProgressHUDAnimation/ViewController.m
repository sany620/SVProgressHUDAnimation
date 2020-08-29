//
//  ViewController.m
//  SVProgressHUDAnimation
//
//  Created by apple on 2020/8/29.
//  Copyright © 2020 duanmu. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD+Loading.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *defaultButton;
@property (nonatomic, strong) UIButton *randomButton;
@property (nonatomic, strong) UIButton *dismissButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.defaultButton];
    [self.view addSubview:self.randomButton];
    [self.view addSubview:self.dismissButton];
}
#pragma mark - 默认点击事件
- (void)buttondefaultEvent:(id)sender {
    [SVProgressHUD svShowLoding];
}
#pragma mark - 随机事件
- (void)buttonRandomEvent:(id)sender {
    FDLoadingAnimationType currentType = arc4random()%32;//DDActivityIndicatorAnimationTypeBallClipRotatePulse
    [SVProgressHUD setActivityIndicatorType:currentType];
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    [SVProgressHUD setActivityIndicatorTintColor:[UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1]];
    [SVProgressHUD show];
}
- (void)dismissEvent:(id)sender {
    [SVProgressHUD dismiss];
}

- (UIButton *)defaultButton{
    if (!_defaultButton) {
        _defaultButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _defaultButton.frame = CGRectMake(100, 100, 80, 44);
        [_defaultButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_defaultButton setTitle:@"default" forState:UIControlStateNormal];
        [_defaultButton addTarget:self action:@selector(buttondefaultEvent:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _defaultButton;
}

- (UIButton *)randomButton{
    if (!_randomButton) {
        _randomButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _randomButton.frame = CGRectMake(100, 164, 80, 44);
        [_randomButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_randomButton setTitle:@"random" forState:UIControlStateNormal];
        [_randomButton addTarget:self action:@selector(buttonRandomEvent:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _randomButton;
}

- (UIButton *)dismissButton{
    if (!_dismissButton) {
        _dismissButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _dismissButton.frame = CGRectMake(100, 228, 80, 44);
        [_dismissButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_dismissButton setTitle:@"dismiss" forState:UIControlStateNormal];
        [_dismissButton addTarget:self action:@selector(dismissEvent:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _dismissButton;
}

@end
