//
//  ViewController.m
//  TestKeyboardBugOnIOS8_3
//
//  Created by Xinrong Guo on 4/24/15.
//  Copyright (c) 2015 FoOTOo. All rights reserved.
//

#import "ViewControllerA.h"
#import "ViewControllerB.h"
#import "NavigationController.h"
#import "TBLandscapeNavigationController.h"

@interface ViewControllerA ()

@end

@implementation ViewControllerA

- (IBAction)handleButton:(id)sender {
    ViewControllerB *pageVC = [ViewControllerB new];

    TBLandscapeNavigationController *navController = [[TBLandscapeNavigationController alloc] initWithRootViewController:pageVC];
    //    [viewController tb_presentViewControllerFromRight:navController animate:YES completion:nil];
    //    [viewController tb_safePresentViewController:navController animated:NO completion:nil];
//    [self presentViewController:pageVC animated:NO completion:nil];
    [self presentViewController:navController animated:YES completion:nil];
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

@end
