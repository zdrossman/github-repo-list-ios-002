//
//  FISGithubRepository.m
//  ReviewSession 3-16-14
//
//  Created by Joe Burgess on 3/16/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISGithubRepository.h"

@implementation FISGithubRepository

-initWithDictionary:(NSDictionary *)githubRepoDictionary
{
    self = [super init];
    
    if (self)
    {
        self.fullNamepa = githubRepoDictionary[@"full_name"];
         self.htmlURL = githubRepoDictionary[@"url"];
         self.repositoryID = githubRepoDictionary[@"id"];
        
    }
    
    return self;
}

-(BOOL)isEqual:(id)object
{
    return YES;
}
@end
