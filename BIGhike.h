//
//  BIGhike.h
//  Gorge Hikes
//
//  Created by Kyle on 5/21/14.
//  Copyright (c) 2014 Big Chicken. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BIGhike : NSObject
// to set information about a hike
@property (nonatomic) NSString *hikeName;
@property (nonatomic) NSString *hikeDifficulty;
@property (nonatomic) NSString *hikeConfiguration;
@property (nonatomic) NSString *hikeSeason;
@property (nonatomic) BOOL completed;
@property (nonatomic) float hikeDistance;


@end
