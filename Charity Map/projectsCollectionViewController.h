//
//  projectsCollectionViewController.h
//  Charity Map
//
//  Created by rebyn on 7/30/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface projectsCollectionViewController : UICollectionViewController
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSArray *dataArray;
@end
