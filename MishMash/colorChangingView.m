//
//  colorChangingView.m
//  MishMash
//
//  Created by Shinichi Kudo on 8/26/16.
//  Copyright © 2016 Nikolas Haase. All rights reserved.
//

#import "colorChangingView.h"

@implementation colorChangingView


- (void)drawRect:(CGRect)rect {
    [self changeBackgroundColor];
    [NSTimer scheduledTimerWithTimeInterval:10.0f
                                     target:self selector:@selector(changeBackgroundColor) userInfo:nil repeats:YES];
}

-(void)changeBackgroundColor{
    
    UIColor* color = [UIColor colorWithRed:[self randomColorValue] green:[self randomColorValue] blue:[self randomColorValue] alpha:0.3f];
    NSLog(@"change C");
    
    [UIView animateWithDuration:5.0 animations:^{
        NSLog(@"animation start");
    
        self.layer.backgroundColor = color.CGColor;
    } completion:^(BOOL finished) {
        [self setBackgroundColor:[UIColor clearColor]];
    }];
}

-(CGFloat)randomColorValue{

    float value = (arc4random() % 255)/255.0f;
    NSLog(@"newFloat");
    
    return value;
}


@end
