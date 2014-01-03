//
//  BirdsDetailViewController.h
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Birdsighting.h"

@class Birdsighting;

@interface BirdsDetailViewController : UITableViewController



@property (strong, nonatomic) Birdsighting *sighting;

@property (weak, nonatomic) IBOutlet UILabel *birdNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;


@end
