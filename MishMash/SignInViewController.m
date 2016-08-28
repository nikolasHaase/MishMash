//
//  SignInViewController.m
//  MishMash
//
//  Created by Shinichi Kudo on 8/27/16.
//  Copyright © 2016 Nikolas Haase. All rights reserved.
//

#import "SignInViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self applyUIChnages];
    [self runSpinAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) runSpinAnimation;
{
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * INT_MAX/25];
    rotationAnimation.duration = INT_MAX;
    rotationAnimation.cumulative = YES;
    rotationAnimation.fillMode = kCAFillModeForwards;
    rotationAnimation.removedOnCompletion = NO;
    
    [_colorWheel.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

-(void)applyUIChnages{
    
    _customLoginButton.layer.borderColor = [UIColor blackColor].CGColor;
    //_customLoginButton.layer.borderWidth = 1.5f;
    _customLoginButton.layer.cornerRadius = _customLoginButton.frame.size.height/1.5;
    _customLoginButton.clipsToBounds = YES;
    
}

#pragma SERVERSIDE



@end
