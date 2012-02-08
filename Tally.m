//
//  Tally.m
//  Exercise3
//
//  Created by Gabriel Aliotta on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Tally.h"


@implementation Tally
@synthesize name, listOfNumbers;
int position = 0;

- (void)dealloc
{
    [name release];
    [listOfNumbers release];
    [super dealloc];
}

-(void) addThisNumberToList:(float)number{
    if(listOfNumbers == nil)
        listOfNumbers = [[NSMutableArray alloc] init];
    [listOfNumbers addObject:[NSNumber numberWithFloat:number]];
}

-(NSString *) currentRecordReport{
    if(listOfNumbers == nil)
        return @"No numbers have been added yet";
    if(position >= [listOfNumbers count])
        position = 0;
    NSString *report = [NSString stringWithFormat:@"listOfNumbers[%i] = %@", position,
                        [listOfNumbers objectAtIndex:position]];
    position++;
    return report;
}



@end
