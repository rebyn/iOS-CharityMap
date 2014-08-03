//
//  projectsCollectionViewController.m
//  Charity Map
//
//  Created by rebyn on 7/30/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import "projectsCollectionViewController.h"
#import "projectCollectionViewCell.h"
#import "CMNetworkEngine.h"

@interface projectsCollectionViewController ()

@end

@implementation projectsCollectionViewController

static NSString * const reuseIdentifier = @"projectViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];

    // Status bar to have the same background as navigationBar
    UIView *syncedStatusBarBackground = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
    syncedStatusBarBackground.backgroundColor = [UIColor colorWithRed:0.973 green:0.973 blue:0.973 alpha:1]; /*#f8f8f8*/
    [self.view addSubview:syncedStatusBarBackground];
    [self fetchApiAndReloadData];
}

- (void)fetchApiAndReloadData {
    CMNetworkEngine *apiClient = [[CMNetworkEngine alloc] init];
    apiClient.debug = YES;
    [apiClient listedProjectsWithcompletionHandler:^(NSArray *projects){
        self.dataArray = projects;
        [self.collectionView reloadData];
    }];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.dataArray count];
}

- (UIImage *) getImageFromURL:(NSString *)fileURL {
    @autoreleasepool {
        UIImage * result;
        
        NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:fileURL]];
        result = [UIImage imageWithData:data];
        
        return result;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    projectCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSDictionary *projectInfo = [self.dataArray objectAtIndex:indexPath.row];
    
    UIImage *projectThumbnail = [self getImageFromURL:[projectInfo valueForKey:@"thumbnail"]];
    cell.projectThumbnail.image = projectThumbnail;
    cell.projectTitle.text = [projectInfo valueForKey:@"title"];
    cell.projectDescription.text = [projectInfo valueForKey:@"location"];
    [cell.projectProgress setProgress:(float)[[projectInfo valueForKey:@"progress"] floatValue]];
    // cell.fundingGoal.text = [projectInfo valueForKey:@"funding_goal"];
    // cell.amountRaised.text = [projectInfo valueForKey:@"fundraised"];
    // cell.endDate.text = [projectInfo valueForKey:@"deadline"];
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
