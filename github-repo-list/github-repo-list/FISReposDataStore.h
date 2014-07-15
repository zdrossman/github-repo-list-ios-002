//
//  FISDataStore.h
//  github-repo-list
//
//  Created by Zachary Drossman on 7/15/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef BOOL(^CompletionBlock)(void);

@interface FISReposDataStore : NSObject

@property (strong, nonatomic) NSManagedObjectContext *context;
@property (strong, nonatomic) NSMutableArray *repositories;

+ (instancetype)sharedDataStore;
-(void)fetchDataWithCompletion:(CompletionBlock)completionBlock;

@end
