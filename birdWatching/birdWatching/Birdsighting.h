//
//  Birdsighting.h
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Birdsighting : NSObject{
    
}

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *location;
@property (nonatomic,strong)NSDate *date;

-(id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date;
    


@end
