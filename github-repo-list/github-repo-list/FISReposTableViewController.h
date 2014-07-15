//
//  FISReposTableViewController.h
//  
//
//  Created by Joe Burgess on 5/5/14.
//
//

#import <UIKit/UIKit.h>
@class FISReposDataStore;

@interface FISReposTableViewController : UITableViewController <NSURLSessionDelegate>

@property (strong, nonatomic) FISReposDataStore *dataStore;

@end
