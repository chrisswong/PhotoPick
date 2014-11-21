//
//  PhotoListViewController.m
//  PhotoLike
//
//  Created by chris on 21/11/14.
//  Copyright (c) 2014 chris. All rights reserved.
//

#import "PhotoListViewController.h"
#import "ViewController.h"

static NSString *cellIdentifier = @"cellIdentifier";

@interface PhotoListViewController ()
{
    AppDelegate *appDelegate;
}

@property (nonatomic, strong) NSArray *photoList;

@end

@implementation PhotoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegate = APP_DELEGATE;
    self.photoList = [appDelegate.photoListManager photoList];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.photoList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    
    NSString *fullFilePath = [self.photoList objectAtIndex:indexPath.row];
    NSString *fileName = [[self.photoList objectAtIndex:indexPath.row] lastPathComponent];
    
    UIImage *image = [UIImage imageWithContentsOfFile:fullFilePath];
    
    cell.textLabel.text = fileName;
    cell.imageView.image = image;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self showImageWithIndexPathRow:indexPath.row];
}

- (void) showImageWithIndexPathRow:(NSInteger) row {
    //
}

#pragma mark - UITableViewDelegate

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
