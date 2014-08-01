//
//  GEMEventsViewController.h
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GEMAddEventViewController.h"

@interface GEMEventsViewController : UIViewController //<GEMAddEventDelegate>
{
    CGRect tvFrame;
    CGRect butnFrame;
    CGPoint originalCenter;
    UISwipeGestureRecognizer *leftSwiper;
    NSUserDefaults *defaults;
}

@property NSDate* eventDate;
@property NSString* eventDateString;
@property NSString* event;
@property NSMutableString* currentEvents;

-(void)didCreateEventWithName:(NSString *)name andDate:(NSDate *)date;
-(void)loadDefaultData;
-(void)saveToDefaults;

@end
