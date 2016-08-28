//
//  updatesViewController.m
//  MishMash
//
//  Created by Shinichi Kudo on 8/26/16.
//  Copyright © 2016 Nikolas Haase. All rights reserved.
//

#import "updatesViewController.h"

@interface updatesViewController ()

@end

@implementation updatesViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self presentSignInViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)presentSignInViewController {
    NSLog(@"got to Login");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SignIn" bundle:nil];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"SignInViewController"];
    [self presentViewController:viewController
                       animated:YES
                     completion:nil];
    
}

@end
