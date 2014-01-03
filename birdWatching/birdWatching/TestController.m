//
//  TestController.m
//  birdWatching
//
//  Created by Yogesh Dalavi on 19/06/13.
//  Copyright (c) 2013 Yogesh Dalavi. All rights reserved.
//

#import "TestController.h"

@interface TestController ()

@end

@implementation TestController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (IBAction)check:(UIStoryboardSegue *)segue
//{
//    NSLog(@"check perform");
//}

- (IBAction)show1:(id)sender {
    
        NSString *showsome=[[NSString alloc] initWithFormat:@"birdcontroller"];
        self.showsomething.text=showsome;
        
   
}


@end
