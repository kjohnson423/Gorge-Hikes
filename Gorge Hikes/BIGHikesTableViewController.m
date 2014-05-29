//
//  BIGHikesTableViewController.m
//  Gorge Hikes
//
//  Created by Kyle on 5/21/14.
//  Copyright (c) 2014 Big Chicken. All rights reserved.
//

#import "BIGHikesTableViewController.h"
#import "BIGhike.h"
#import "BIGHikeDetailViewController.h"

@interface BIGHikesTableViewController ()

@end

@implementation BIGHikesTableViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // data for 'self.hikes'
    BIGhike *hike1 = [[BIGhike alloc] init];
    hike1.hikeName = @"Angel's Rest";
    hike1.hikeDifficulty = @"Moderate";
    hike1.hikeConfiguration = @"Out-and-Back";
    hike1.hikeSeason = @"Year-Round";
    hike1.hikeDistance = 4.6f;
    BIGhike *hike2 = [[BIGhike alloc] init];
    hike2.hikeName = @"Beacon Rock";
    hike2.hikeDifficulty = @"Easy";
    hike2.hikeConfiguration = @"Out-and-Back";
    hike2.hikeSeason = @"Year-Round";
    hike2.hikeDistance = 1.8f;
    BIGhike *hike3 = [[BIGhike alloc] init];
    hike3.hikeName = @"Catherine Creek";
    hike3.hikeDifficulty = @"Moderate";
    hike3.hikeConfiguration = @"Loop";
    hike3.hikeSeason = @"Year-Round";
    hike3.hikeDistance = 4.1f;
    BIGhike *hike4 = [[BIGhike alloc] init];
    hike4.hikeName = @"Chinidere Mountain";
    hike4.hikeDifficulty = @"Easy";
    hike4.hikeConfiguration = @"Loop";
    hike4.hikeSeason = @"July-October";
    hike4.hikeDistance = 4.0f;
    BIGhike *hike5 = [[BIGhike alloc] init];
    hike5.hikeName = @"Coyote Wall";
    hike5.hikeDifficulty = @"Moderate";
    hike5.hikeConfiguration = @"Out-and-Back";
    hike5.hikeSeason = @"Year-Round";
    hike5.hikeDistance = 4.6f;
    BIGhike *hike6 = [[BIGhike alloc] init];
    hike6.hikeName = @"Devil's Rest";
    hike6.hikeDifficulty = @"Moderate";
    hike6.hikeConfiguration = @"Out-and-Back";
    hike6.hikeSeason = @"Year-Round";
    hike6.hikeDistance = 7.5f;
    BIGhike *hike7 = [[BIGhike alloc] init];
    hike7.hikeName = @"Dog Mountain";
    hike7.hikeDifficulty = @"Strenuous";
    hike7.hikeConfiguration = @"Loop";
    hike7.hikeSeason = @"Year-Round";
    hike7.hikeDistance = 6.9f;
    BIGhike *hike8 = [[BIGhike alloc] init];
    hike8.hikeName = @"Eagle Creek";
    hike8.hikeDifficulty = @"Moderate";
    hike8.hikeConfiguration = @"Out-and-Back";
    hike8.hikeSeason = @"Year-Round";
    hike8.hikeDistance = 12.5f;
    BIGhike *hike9 = [[BIGhike alloc] init];
    hike9.hikeName = @"Hamilton Mountain";
    hike9.hikeDifficulty = @"Strenuous";
    hike9.hikeConfiguration = @"Loop";
    hike9.hikeSeason = @"Year-Round";
    hike9.hikeDistance = 8.0f;
    BIGhike *hike10 = [[BIGhike alloc] init];
    hike10.hikeName = @"Herman Creek";
    hike10.hikeDifficulty = @"Easy";
    hike10.hikeConfiguration = @"Out-and-Back";
    hike10.hikeSeason = @"Year-Round";
    hike10.hikeDistance = 6.0f;
    BIGhike *hike11 = [[BIGhike alloc] init];
    hike11.hikeName = @"Larch Mountain";
    hike11.hikeDifficulty = @"Strenuous";
    hike11.hikeConfiguration = @"Out-and-Back";
    hike11.hikeSeason = @"June-October";
    hike11.hikeDistance = 13.6f;
    BIGhike *hike12 = [[BIGhike alloc] init];
    hike12.hikeName = @"McCall Nature Preserve";
    hike12.hikeDifficulty = @"Moderate";
    hike12.hikeConfiguration = @"McCall Point Trail: Out-and-Back Plateau Loop: Loop";
    hike12.hikeSeason = @"McCall Point Trail: May-November Plateau Loop: Year-Round";
    hike12.hikeDistance = 5.0f;
    BIGhike *hike13 = [[BIGhike alloc] init];
    hike13.hikeName = @"Table Mountain";
    hike13.hikeDifficulty = @"Strenuous";
    hike13.hikeConfiguration = @"Loop";
    hike13.hikeSeason = @"April-November";
    hike13.hikeDistance = 8.5f;
    BIGhike *hike14 = [[BIGhike alloc] init];
    hike14.hikeName = @"Triple Falls";
    hike14.hikeDifficulty = @"Moderate";
    hike14.hikeConfiguration = @"Out-and-Back";
    hike14.hikeSeason = @"Year-Round";
    hike14.hikeDistance = 4.5f;
    BIGhike *hike15 = [[BIGhike alloc] init];
    hike15.hikeName = @"Wahkeena Falls";
    hike15.hikeDifficulty = @"Moderate";
    hike15.hikeConfiguration = @"Loop";
    hike15.hikeSeason = @"Year-Round";
    hike15.hikeDistance = 5.2f;
    
    self.hikes = [[NSArray alloc] initWithObjects:hike1, hike2, hike3, hike4, hike5, hike6, hike7, hike8, hike9, hike10, hike11, hike12, hike13, hike14, hike15, nil];
// -------- 'self.hikes' data set A-OK!! ----------
    
}
- (void)viewWillAppear:(BOOL)animated;
{
    [super viewWillAppear:YES];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.hikes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    BIGhike *thisHike = [self.hikes objectAtIndex:indexPath.row];
    
    cell.textLabel.text = thisHike.hikeName;
    
    
    
    if (thisHike.completed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}



#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    BIGhike *theHike = [self.hikes objectAtIndex:indexPath.row];
    
    if ([segue.identifier isEqualToString:@"pushToDetail"]) {
        BIGHikeDetailViewController *detailController = [segue destinationViewController];
        detailController.thisName = theHike.hikeName;
        detailController.thisDifficulty = theHike.hikeDifficulty;
        detailController.thisDistance = theHike.hikeDistance;
        detailController.thisSeason = theHike.hikeSeason;
        detailController.thisConfiguration = theHike.hikeConfiguration;
        detailController.isCompleted = theHike.completed;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (IBAction)unwindAddHike:(UIStoryboardSegue *)segue
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    BIGhike *theHike = [self.hikes objectAtIndex:indexPath.row];
    
    theHike.completed = YES;
}

- (IBAction)unwindRemoveHike:(UIStoryboardSegue *)segue
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    BIGhike *theHike = [self.hikes objectAtIndex:indexPath.row];
    
    theHike.completed = NO;
}


@end
