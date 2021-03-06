//
//  Tally.m
//  Exercise3
//
//  Created by Gabriel Aliotta on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Tally.h"


@implementation Tally
@synthesize name = _name;
@synthesize listOfNumbers = _listOfNumbers;
int position = 0;

- (void)dealloc
{
    [_name release];
    [_listOfNumbers release];
    [super dealloc];
}

-(NSMutableArray*) listOfNumbers
{
    if(_listOfNumbers == nil)
        _listOfNumbers = [[NSMutableArray alloc] init];
    return _listOfNumbers;
}

-(void) addThisNumberToList:(float)number{
    [self.listOfNumbers addObject:[NSNumber numberWithFloat:number]];
}

-(NSString *) currentRecordReport{
    if(self.listOfNumbers.count == 0)
        return @"No numbers have been added yet";
    if(position >= [_listOfNumbers count])
        position = 0;
    NSString *report = [NSString stringWithFormat:@"listOfNumbers[%i] = %@", position,
                        [_listOfNumbers objectAtIndex:position]];
    position++;
    return report;
}



@end
