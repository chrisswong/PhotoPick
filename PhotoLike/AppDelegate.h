//
//  AppDelegate.h
//  PhotoLike
//
//  Created by chris on 20/11/14.
//  Copyright (c) 2014 chris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoListManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) PhotoListManager *photoListManager;


@end

