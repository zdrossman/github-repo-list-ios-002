//
//  FISDataStore.m
//  github-repo-list
//
//  Created by Zachary Drossman on 7/15/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISReposDataStore.h"
#import "FISGithubRepository.h"
#import "FISGithubAPIClient.h"

@implementation FISReposDataStore

-(NSMutableArray *)repositories
{
    if (!_repositories)
    {
        _repositories = [[NSMutableArray alloc] init];
    }
    
    return _repositories;
}

-(void)fetchDataWithCompletion:(CompletionBlock)completionBlock
{
    
    FISGithubAPIClient *client = [[FISGithubAPIClient alloc] init];
    
    [client fetchRepositoriesFromGithub:^(NSArray *serializedData) {
        

        
        for (NSDictionary *repo in serializedData)
        {
            FISGithubRepository *githubRepo = [[FISGithubRepository alloc] initWithDictionary:repo];
            
            [self.repositories addObject:githubRepo];
        }
        
        completionBlock();

    }];
    
    

    
}

+ (instancetype)sharedDataStore {
    static FISReposDataStore *_sharedDataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedDataStore = [[FISReposDataStore alloc] init];
    });
    
    return _sharedDataStore;
}
@end
