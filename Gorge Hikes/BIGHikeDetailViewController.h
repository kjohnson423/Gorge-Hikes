//
//  BIGHikeDetailViewController.h
//  Gorge Hikes
//
//  Created by Kyle on 5/21/14.
//  Copyright (c) 2014 Big Chicken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIGHikeDetailViewController : UIViewController

@property (nonatomic) NSString *thisName;
@property (nonatomic) NSString *thisDifficulty;
@property (nonatomic) NSString *thisConfiguration;
@property (nonatomic) NSString *thisSeason;
@property (nonatomic) BOOL isCompleted;
@property (nonatomic) float thisDistance;

@property (strong, nonatomic) IBOutlet UILabel *distanceLabel;
@property (strong, nonatomic) IBOutlet UILabel *difficultyLabel;
@property (strong, nonatomic) IBOutlet UILabel *configurationLabel;
@property (strong, nonatomic) IBOutlet UILabel *seasonLabel;

@property (strong, nonatomic) IBOutlet UIButton *addHikeButton;
@property (strong, nonatomic) IBOutlet UIButton *removeHikeButton;


@end
