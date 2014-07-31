//
//  GEMAddEventViewController.h
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GEMAddEventDelegate.h"
@class GEMAddEventViewController;

@protocol GEMAddEventDelegate;

@interface GEMAddEventViewController : UIViewController
{
    UISwipeGestureRecognizer *rightSwiper;
}

@property (weak, nonatomic) id<GEMAddEventDelegate> delegate;

-(void)closeVC;

@end
