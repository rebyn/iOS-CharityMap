//
//  projectsCollectionViewController.m
//  Charity Map
//
//  Created by rebyn on 7/30/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import "projectsCollectionViewController.h"
#import "projectCollectionViewCell.h"

@interface projectsCollectionViewController ()

@end

@implementation projectsCollectionViewController

static NSString * const reuseIdentifier = @"projectViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    for (int i=0; i<50; i++) {
        [dataArray addObject:[[NSDictionary alloc] initWithObjectsAndKeys:
                              @"value1", @"key1", @"value2", @"key2", nil]];
    }

    // Status bar to have the same background as navigationBar
    UIView *syncedStatusBarBackground = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
    syncedStatusBarBackground.backgroundColor = [UIColor colorWithRed:0.973 green:0.973 blue:0.973 alpha:1]; /*#f8f8f8*/
    [self.view addSubview:syncedStatusBarBackground];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    projectCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.projectThumbnail.image = [UIImage imageNamed:@"projectThumbnail"];
    cell.projectTitle.text = @"Here comes the title";
    cell.projectDescription.text = @"Here comes the description";
    [cell.projectProgress setProgress:(float) 0.3];
    return cell;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


@end
