//
//  BIGHikesTableViewController.h
//  Gorge Hikes
//
//  Created by Kyle on 5/21/14.
//  Copyright (c) 2014 Big Chicken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIGHikesTableViewController : UITableViewController
@property (nonatomic) NSArray *hikes;

- (IBAction)unwindAddHike:(UIStoryboardSegue *)segue;
- (IBAction)unwindRemoveHike:(UIStoryboardSegue *)segue;

@end
