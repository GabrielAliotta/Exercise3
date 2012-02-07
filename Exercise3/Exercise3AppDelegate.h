//
//  Exercise3AppDelegate.h
//  Exercise3
//
//  Created by Gabriel Aliotta on 2/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Exercise3ViewController;

@interface Exercise3AppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Exercise3ViewController *viewController;

@end
