//
//  GEMAddEventViewController.h
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GEMAddEventViewController;

@protocol GEMAddEventDelegate;

@interface GEMAddEventViewController : UIViewController
{
    UISwipeGestureRecognizer *rightSwiper;
}

//@property (weak, nonatomic) id<GEMAddEventDelegate> delegate;
@property NSDate* eventDate;
@property NSString* eventString;

//-(void)validateEvent;
-(void)closeVC;

@end
