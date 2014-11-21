//
//  ViewController.m
//  PhotoLike
//
//  Created by chris on 20/11/14.
//  Copyright (c) 2014 chris. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    AppDelegate *appDelegate;
}

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
    
    [APP_DELEGATE.photoListManager saveImageData:imageData];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:@"Image Saved" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
}

@end
