//
//  NavigationController.m
//  TapsbookSDK
//
//  Created by Xinrong Guo on 14-10-9.
//  Copyright (c) 2014年 tapsbook. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (NSUInteger)supportedInterfaceOrientations {
    return [self.topViewController supportedInterfaceOrientations];
}

@end
