//
//  Common.h
//  PhotoLike
//
//  Created by chris on 21/11/14.
//  Copyright (c) 2014 chris. All rights reserved.
//

#include "AppDelegate.h"

#ifndef PhotoLike_Common_h
#define PhotoLike_Common_h

#define CACHE_DIRECTORY [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject]

#define APP_DELEGATE (AppDelegate *) [[UIApplication sharedApplication] delegate];

#endif
