//
//  BIGHikeDetailViewController.m
//  Gorge Hikes
//
//  Created by Kyle on 5/21/14.
//  Copyright (c) 2014 Big Chicken. All rights reserved.
//

#import "BIGHikeDetailViewController.h"

@interface BIGHikeDetailViewController ()

@end

@implementation BIGHikeDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@", self.thisName);
    
    self.navigationItem.title = self.thisName;
    
    self.distanceLabel.text = [NSString stringWithFormat:@"%.01f", self.thisDistance];
    self.seasonLabel.text = self.thisSeason;
    self.configurationLabel.text = self.thisConfiguration;
    self.difficultyLabel.text = self.thisDifficulty;
    
    if (self.isCompleted) {
        [self.addHikeButton setHidden:YES];
    } else {
        [self.removeHikeButton setHidden:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
