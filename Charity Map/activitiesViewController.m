//
//  activitiesViewController.m
//  Charity Map
//
//  Created by rebyn on 7/30/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import "activitiesViewController.h"

@interface activitiesViewController ()

@end

@implementation activitiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Set button's radius to 10
    self.discoverMoreButton.layer.cornerRadius = 5;
    self.discoverMoreButton.clipsToBounds = YES;
    
    // Status bar to have the same background as navigationBar
    UIView *syncedStatusBarBackground = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
    syncedStatusBarBackground.backgroundColor = [UIColor colorWithRed:0.973 green:0.973 blue:0.973 alpha:1]; /*#f8f8f8*/
    [self.view addSubview:syncedStatusBarBackground];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // Fancy fade-in animation at the beginning
    _emptyActivitiesWelcomeScreen.alpha = 0;
    [UIView animateWithDuration:1.5 animations:^{
        _emptyActivitiesWelcomeScreen.alpha = 1;
    }];
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
