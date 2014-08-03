//
//  CMNetworkEngine.h
//  Charity Map
//
//  Created by rebyn on 8/3/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMNetworkEngine : NSObject

@property BOOL debug;
@property (strong) NSString* authToken;
@property (strong) NSArray* projects;

- (void) listedProjects;

@end
