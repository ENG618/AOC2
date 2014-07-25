//
//  GEMAddEventDelegate.h
//  Project3
//
//  Created by Eric Garcia on 7/24/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GEMAddEventViewController;

@protocol GEMAddEventDelegate <NSObject>

@required

// Passed to delegate when new event created
-(void)didCreateEventWithName:(NSString*)name andDate:(NSDate*)date;

@end
