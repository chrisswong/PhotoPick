//
//  PhotoListManager.m
//  PhotoLike
//
//  Created by chris on 21/11/14.
//  Copyright (c) 2014 chris. All rights reserved.
//

#import "PhotoListManager.h"
#import "Common.h"

@implementation PhotoListManager

- (NSArray *) photoList {
    
    return [[NSFileManager defaultManager] contentsOfDirectoryAtPath:CACHE_DIRECTORY error:NULL];;
}
@end
