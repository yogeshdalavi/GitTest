//
//  BirdsMasterViewController.m
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//
#import "BirdsMasterViewController.h"



#import "BirdsDetailViewController.h"

#import "BirdSightingDataController.h"

#import "Birdsighting.h"

#import "AddSightingViewController.h"



@implementation BirdsMasterViewController



- (void)awakeFromNib

{
    
    [super awakeFromNib];
    
    self.dataController = [[BirdSightingDataController alloc] init];
    
}



- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem.accessibilityHint = @"Adds a new bird sighting event";

    
    // Do any additional setup after loading the view, typically from a nib.
    
}



- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
    
}



#pragma mark - Table View



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView

{
    
    return 1;
    
}

- (IBAction)check:(UIStoryboardSegue *)segue
{
    NSLog(@"check perform");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.dataController countOfList];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    static NSString *CellIdentifier = @"BirdSightingCell";
    
    
    
    static NSDateFormatter *formatter = nil;
    
    if (formatter == nil) {
        
        formatter = [[NSDateFormatter alloc] init];
        
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    
    Birdsighting *sightingAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    
    [[cell textLabel] setText:sightingAtIndex.name];
    
    [[cell detailTextLabel] setText:[formatter stringFromDate:(NSDate *)sightingAtIndex.date]];
    
    return cell;
    
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    // Return NO if you do not want the specified item to be editable.
    
    return NO;
    
}



- (IBAction)done:(UIStoryboardSegue *)segue

{
    
   // if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        
        
        
        AddSightingViewController *addController = [segue sourceViewController];
        
        if (addController.birdSighting) {
            
            [self.dataController addBirdSightingWithSighting:addController.birdSighting];
            
            [[self tableView] reloadData];
            
        }
        
        [self dismissViewControllerAnimated:YES completion:NULL];
        
   // }
    
}

- (IBAction)cancel:(UIStoryboardSegue *)segue

{
    
   // if ([[segue identifier] isEqualToString:@"CancelInput"]) {
        
        [self dismissViewControllerAnimated:YES completion:NULL];
        
    //}
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ShowSightingDetails"]) {
        
        BirdsDetailViewController *detailViewController = [segue destinationViewController];
        
         detailViewController.sighting = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];
        
    }
    
}



@end