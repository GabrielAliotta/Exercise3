//
//  ExerciseView.m
//  Exercise3
//
//  Created by Gabriel Aliotta on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseView.h"
#import "Tally.h"
#import "Exercise3AppDelegate.h"


@implementation ExerciseView
@synthesize myLabel;
@synthesize mySlider;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [myLabel release];
    [mySlider release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    Exercise3AppDelegate *appDelegate = (Exercise3AppDelegate *) [[UIApplication sharedApplication] delegate];
    Tally *tallyObject = appDelegate.tally;
    myLabel.text = tallyObject.name;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{

    [self setMyLabel:nil];
    [self setMySlider:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)changeLabel:(id)sender {
    myLabel.text = [NSString stringWithFormat:@"Slider value = %f", mySlider.value];
    
    Exercise3AppDelegate *appDelegate = (Exercise3AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    Tally *tallyObject = appDelegate.tally;
    [tallyObject addThisNumberToList:mySlider.value];
    
}

- (IBAction)displayNextRecord:(id)sender {
    Exercise3AppDelegate *appDelegate = (Exercise3AppDelegate *)[[UIApplication sharedApplication] delegate];
    Tally *tallyObject = appDelegate.tally;
    myLabel.text = tallyObject.currentRecordReport;
}
@end
