//
//  FISGithubAPIClient.h
//  github-repo-list
//
//  Created by Zachary Drossman on 7/15/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^DataBlock)(NSArray *);

@interface FISGithubAPIClient : NSObject

-(void) fetchRepositoriesFromGithub:(DataBlock)dataBlock;

@end
