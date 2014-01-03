//
//  AddSightingViewController.h
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Birdsighting.h"

@class Birdsighting;

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;

@property (weak, nonatomic) IBOutlet UITextField *locationInput;

@property (strong, nonatomic) Birdsighting *birdSighting;

@end