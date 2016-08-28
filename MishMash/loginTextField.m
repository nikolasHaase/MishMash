//
//  loginTextField.m
//  MishMashApp
//
//  Created by nikolas on 3/21/15.
//  Copyright (c) 2015 MishMash. All rights reserved.
//

#import "loginTextField.h"

@implementation loginTextField{
    
    UIView *underline;
    UIButton *deleteButton;
}


- (void)drawRect:(CGRect)rect {
    
    [self setup];
}

-(void)setup{
    [self setBorderStyle:UITextBorderStyleBezel];
    [self setBackgroundColor:[UIColor clearColor]];
    [self setTextColor:[UIColor blackColor]];
    [self setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self setTintColor:[UIColor blackColor]];
    [self setDelegate:self];
    
    //underline
    underline = [[UIView alloc] initWithFrame:CGRectMake(5.0f, self.frame.size.height - 1.5f , self
                                                         .frame.size.width - 2.5f, 1.5f)];
    [underline setBackgroundColor:[UIColor blackColor]];
    [underline setAlpha:0.3f];
    
    [self addSubview:underline];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    if (underline.alpha != 1.0f) {
        [UIView animateKeyframesWithDuration:0.3f delay:0.0f options:0 animations:^{
            [underline setAlpha:1.0f];
        } completion:nil];
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    
    if ([textField.text isEqualToString:@""])
        [underline setAlpha:0.3f];
    
    [self resignFirstResponder];
        
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}


@end
