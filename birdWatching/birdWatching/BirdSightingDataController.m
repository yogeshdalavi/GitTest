//
//  BirdSightingDataController.m
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import "BirdSightingDataController.h"


@interface BirdSightingDataController ()

- (void)initializeDefaultDataList;

@end

@implementation BirdSightingDataController

- (void)initializeDefaultDataList {
    
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    
    self.masterBirdSightingList = sightingList;
    
    Birdsighting *sighting;
    
    NSDate *today = [NSDate date];
    
    sighting = [[Birdsighting alloc] initWithName:@"Pigeon" location:@"Everywhere" date:today] ;
    
    //[self.masterBirdSightingList addObject:sighting]; //this is also right way to add object in to array
    [self addBirdSightingWithSighting:sighting]; ///this is just a parameter passing and adding object in fuction "addBirdSightingWithSighting"
    
}

- (void)setMasterBirdSightingList:(NSMutableArray *)newList {
    
    if (_masterBirdSightingList != newList) {
        
        _masterBirdSightingList = [newList mutableCopy];
        
    }
    
}

- (id)init {
    
    if (self = [super init]) {
        
        [self initializeDefaultDataList];
        
        return self;
        
    }
    
    return nil;
    
}


- (NSUInteger)countOfList {
    
    return [self.masterBirdSightingList count];
    
}

- (Birdsighting *)objectInListAtIndex:(NSUInteger)theIndex {
    
    return [self.masterBirdSightingList objectAtIndex:theIndex];
    
}

- (void)addBirdSightingWithSighting:(Birdsighting *)sighting {
    
    [self.masterBirdSightingList addObject:sighting];
    
}

@end