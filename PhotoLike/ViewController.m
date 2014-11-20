//
//  ViewController.m
//  PhotoLike
//
//  Created by chris on 20/11/14.
//  Copyright (c) 2014 chris. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)givePhotoAcessButtonDidTapped:(UIButton *)sender {

    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    pickerController.delegate = self;
    [self presentViewController:pickerController animated:YES completion:NULL];
}


#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *selectedImage = info[UIImagePickerControllerOriginalImage];
    
    NSData *imageData = UIImagePNGRepresentation(selectedImage);
    
    NSArray* cachePathArray = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString* cachePath = [cachePathArray lastObject];
    
    NSInteger randomFileNo = arc4random_uniform(100);
    
    NSString *fileName = [NSString stringWithFormat:@"%d.png", randomFileNo];
    
    NSString *filePath = [cachePath stringByAppendingPathComponent:fileName];
    
    [imageData writeToFile:filePath atomically:YES];
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
}

@end
