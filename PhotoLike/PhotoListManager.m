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
    
    NSArray *list = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:CACHE_DIRECTORY error:NULL];
    
    NSMutableArray *fullPathList = [[NSMutableArray alloc] init];
    
    for (NSString *fileName in list) {
        if (![fileName hasPrefix:@"."]) {
            
            [fullPathList addObject:[CACHE_DIRECTORY stringByAppendingPathComponent:fileName]];
        }
    }
    
    return [NSArray arrayWithArray:fullPathList];
}

- (void) saveImageData:(NSData *) imageData {
    
    NSInteger randomFileNo = arc4random_uniform(100);
    
    NSString *fileName = [NSString stringWithFormat:@"%d.png", randomFileNo];
    
    NSString *filePath = [CACHE_DIRECTORY stringByAppendingPathComponent:fileName];
    
    [imageData writeToFile:filePath atomically:YES];
    
    NSLog(@"image saved at %@" , filePath);
    
}
@end
