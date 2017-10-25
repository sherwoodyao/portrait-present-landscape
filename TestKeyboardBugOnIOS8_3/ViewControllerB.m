//
//  LandscapeViewController.m
//  TestKeyboardBugOnIOS8_3
//
//  Created by Xinrong Guo on 4/24/15.
//  Copyright (c) 2015 FoOTOo. All rights reserved.
//

#import "ViewControllerB.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

//- (BOOL)shouldAutorotate {
//    return NO;
//}

@end
