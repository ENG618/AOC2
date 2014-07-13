//
//  GEMBaseVehicle.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMBaseVehicle.h"

@implementation GEMBaseVehicle

-(id)init
{
    if (self = [super init]) {
        modle = nil;
        favYear = 0;
        isFourByFour = NO;
    }
    return self;
}

@end
