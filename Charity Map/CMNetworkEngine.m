//
//  CMNetworkEngine.m
//  Charity Map
//
//  Created by rebyn on 8/3/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import "CMNetworkEngine.h"

@implementation CMNetworkEngine

-(void)getProjects {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://example.com/resources.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
