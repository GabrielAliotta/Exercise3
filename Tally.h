//
//  Tally.h
//  Exercise3
//
//  Created by Gabriel Aliotta on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Tally : NSObject {
    NSString *name;
    NSMutableArray *listOfNumbers;
}

@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSMutableArray *listOfNumbers;
-(void) addThisNumberToList:(float)number;
-(NSString *) currentRecordReport;

@end
