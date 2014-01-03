//
//  AddSightingViewController.m
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import "AddSightingViewController.h"


@interface AddSightingViewController ()



@end



@implementation AddSightingViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ((textField == self.birdNameInput) || (textField == self.locationInput)) {
        
        [textField resignFirstResponder];
        
    }
    
    return YES;
    
}

- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    
    // self.clearsSelectionOnViewWillAppear = NO;
    
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}



- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        
        if ([self.birdNameInput.text length] || [self.locationInput.text length]) {
            
            
            NSDate *today = [NSDate date];
            
            Birdsighting *sighting = [[Birdsighting alloc] initWithName:self.birdNameInput.text location:self.locationInput.text date:today];
            
            self.birdSighting = sighting;
            
        }
    
    //}
    
}

@end