//
//  projectsCollectionViewController.m
//  Charity Map
//
//  Created by rebyn on 7/30/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import "projectsCollectionViewController.h"

@interface projectsCollectionViewController ()

@end

@implementation projectsCollectionViewController

static NSString * const reuseIdentifier = @"projectViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *firstSection = [[NSMutableArray alloc] init];
    NSMutableArray *secondSection = [[NSMutableArray alloc] init];
    for (int i=0; i<50; i++) {
        [firstSection addObject:[NSString stringWithFormat:@"Cell %d", i]];
        [secondSection addObject:[NSString stringWithFormat:@"item %d", i]];
    }
    self.dataArray = [[NSArray alloc] initWithObjects:firstSection, secondSection, nil];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.dataArray count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSMutableArray *sectionArray = [self.dataArray objectAtIndex:section];
    return [sectionArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
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
