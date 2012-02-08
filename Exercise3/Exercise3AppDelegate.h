//
//  Exercise3AppDelegate.h
//  Exercise3
//
//  Created by Gabriel Aliotta on 2/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tally.h"

@class Exercise3ViewController;

@interface Exercise3AppDelegate : NSObject <UIApplicationDelegate> {

    Tally *tally;    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) Tally *tally;

@property (nonatomic, retain) IBOutlet Exercise3ViewController *viewController;
- (IBAction)changeLabel:(id)sender;
- (IBAction)displayNextRecord:(id)sender;
@end
