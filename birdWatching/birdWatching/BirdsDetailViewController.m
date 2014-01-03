//
//  BirdsDetailViewController.m
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import "BirdsDetailViewController.h"


@interface BirdsDetailViewController ()

- (void)configureView;

@end



@implementation BirdsDetailViewController

#pragma mark - Managing the detail item



- (void)setSighting:(Birdsighting *) newSighting

{
    
    if (_sighting != newSighting) {
        
        _sighting = newSighting;
        
        
        
        // Update the view.
        
        [self configureView];
        
    }
    
}



- (void)configureView

{
    
    // Update the user interface for the detail item.
    
    Birdsighting *theSighting = self.sighting;
    
    
    
    static NSDateFormatter *formatter = nil;
    
    if (formatter == nil) {
        
        formatter = [[NSDateFormatter alloc] init];
        
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        
    }
    
    if (theSighting) {
        
        self.birdNameLabel.text = theSighting.name;
        
        self.locationLabel.text = theSighting.location;
        
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)theSighting.date];
        
    }
    
}




- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
    
}

@end