//
//  GEMEventsViewController.h
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GEMAddEventViewController.h"
#import "GEMAddEventDelegate.h"

@interface GEMEventsViewController : UIViewController <GEMAddEventDelegate>
{
    CGRect tvFrame;
    CGRect butnFrame;
    CGPoint originalCenter;
    UISwipeGestureRecognizer *leftSwiper;
}

@property NSDate* eventDate;
@property NSString* eventDateString;
@property NSString* event;
@property NSString* currentEvents;


@end
