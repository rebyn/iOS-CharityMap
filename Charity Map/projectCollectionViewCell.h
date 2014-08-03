//
//  projectCollectionViewCell.h
//  Charity Map
//
//  Created by rebyn on 8/3/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface projectCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *projectThumbnail;
@property (strong, nonatomic) IBOutlet UILabel *projectTitle;
@property (strong, nonatomic) IBOutlet UILabel *projectDescription;
@property (strong, nonatomic) IBOutlet UIProgressView *projectProgress;

@end
