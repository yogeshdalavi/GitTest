//
//  Birdsighting.m
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import "Birdsighting.h"

@implementation Birdsighting
@synthesize name,location,date;

-(id)initWithName:(NSString *)nm location:(NSString *)loc date:(NSDate *)dt
{
    self = [super init];
    if(self)
    {
        name=nm;
        
        location = loc;
        
        date = dt;
        
        return self;
        
    }
    
    return nil;
  
        
}

@end
