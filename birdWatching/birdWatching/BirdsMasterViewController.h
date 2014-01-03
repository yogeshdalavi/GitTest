//
//  BirdsMasterViewController.h
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//
#import <UIKit/UIKit.h>

@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController *dataController;

- (IBAction)done:(UIStoryboardSegue *)segue;

- (IBAction)cancel:(UIStoryboardSegue *)segue;

@end
