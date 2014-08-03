//
//  CMNetworkEngine.m
//  Charity Map
//
//  Created by rebyn on 8/3/14.
//  Copyright (c) 2014 Charity Map. All rights reserved.
//

#import "CMNetworkEngine.h"
#import "AFHTTPRequestOperationManager.h"

@implementation CMNetworkEngine

- (void) makeApiCall:(NSString *)url method:(NSString *)method params:(NSDictionary *)params
{
//    NSURL *backendURL = [NSURL URLWithString:url];
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:backendURL];
//    NSError *error;
//    NSMutableData *requestBody = [[NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:&error] mutableCopy];
//    if (self.debug) NSLog(@"%@ %@", method, url);
//    [request setHTTPMethod:method];
//    [request setHTTPBody:requestBody];
//    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
//    NSOperationQueue *queue = [NSOperationQueue new];
//    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//        if (self.debug) {
//            if (connectionError) {
//                NSLog(@"Error from backend %@", connectionError);
//            } else {
//                NSString *parsedJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
//                NSLog(@"Result from backend %@", parsedJSON);
//            }
//        }
//    }];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setValue:@"utf-8" forHTTPHeaderField:@"Accept-Charset"];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void) listedProjects {
    NSString *url = @"https://CharityMap:Saigon2013@www.charity-map.org/api/v1/projects.json";
//    NSDictionary* params = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
//                            self.authToken, @"auth_token",
//                            userId,         @"id", nil];
    [self makeApiCall:url method:@"GET" params:[NSMutableDictionary dictionary]];
}

@end
