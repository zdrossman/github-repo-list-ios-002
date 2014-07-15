//
//  FISGithubAPIClient.m
//  github-repo-list
//
//  Created by Zachary Drossman on 7/15/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//


#import "FISGithubAPIClient.h"

@implementation FISGithubAPIClient

-(void) fetchRepositoriesFromGithub:(DataBlock)dataBlock
{
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://api.github.com/repositories?client_id=f523187ecd099eecc17d&client_secret=784bc46e9c6d412b31d6dfab7d798d1078472603"]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        dataBlock(data,error);
        
    }];
    
    [task resume];
}
@end
