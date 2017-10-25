//
//  TBLandscapeNavigationController.m
//  TapsbookSDK
//
//  Created by Xinrong Guo on 14-10-9.
//  Copyright (c) 2014年 tapsbook. All rights reserved.
//

#import "TBLandscapeNavigationController.h"

@interface TBLandscapeNavigationController ()

@end

@implementation TBLandscapeNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    UIInterfaceOrientationMask mask = [self supportedInterfaceOrientations];
    UIInterfaceOrientation orientation = [self.viewControllers[0] preferredInterfaceOrientationForPresentation];
    
    switch (mask) {
        case UIInterfaceOrientationMaskPortrait:
            orientation = UIInterfaceOrientationPortrait;
            break;
        case UIInterfaceOrientationMaskLandscapeLeft:
            orientation = UIInterfaceOrientationLandscapeLeft;
            break;
        case UIInterfaceOrientationMaskLandscapeRight:
            orientation = UIInterfaceOrientationLandscapeRight;
            break;
        case UIInterfaceOrientationMaskPortraitUpsideDown:
            orientation = UIInterfaceOrientationPortraitUpsideDown;
            break;
        case UIInterfaceOrientationMaskLandscape:
            if (orientation != UIInterfaceOrientationLandscapeLeft && orientation != UIInterfaceOrientationLandscapeRight) {
                orientation = UIInterfaceOrientationLandscapeRight;
            }
            break;
        case UIInterfaceOrientationMaskAll:
            // not change
            break;
        case UIInterfaceOrientationMaskAllButUpsideDown:
            if (orientation == UIInterfaceOrientationPortraitUpsideDown) {
                orientation = UIInterfaceOrientationPortrait;
            }
            break;
            
        default:
            NSAssert(NO, @"orientationMask not supported");
            break;
    }
    
    return orientation;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    UIInterfaceOrientationMask result = [self.viewControllers[0] supportedInterfaceOrientations];
    return result;
}

- (BOOL)shouldAutorotate {
    return [self.viewControllers[0] shouldAutorotate];
}

@end
