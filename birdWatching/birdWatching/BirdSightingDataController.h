//
//  BirdSightingDataController.h
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Birdsighting.h"

@class Birdsighting;

@interface BirdSightingDataController : NSObject
@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

- (NSUInteger)countOfList;

- (Birdsighting *)objectInListAtIndex:(NSUInteger)theIndex;

- (void)addBirdSightingWithSighting:(Birdsighting *)sighting;

@end
