//
//  ExerciseView.h
//  Exercise3
//
//  Created by Gabriel Aliotta on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ExerciseView : UIViewController {
    
    UILabel *myLabel;
    UISlider *mySlider;
}
@property (nonatomic, retain) IBOutlet UILabel *myLabel;
@property (nonatomic, retain) IBOutlet UISlider *mySlider;


@end
