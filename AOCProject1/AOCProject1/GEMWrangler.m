//
//  GEMWrangler.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMWrangler.h"
#import "GEMBaseVehicle.h"
#import "GEMF350.h"
#import "GEMMustang.h"
#import "GEMWrangler.h"

@implementation GEMWrangler

-(id)init
{
    if (self = [super init]) {
        model = @"Jeep Wrangler";
        modelYear = 2007;
        isFourByFour = YES;
    }
    return self;
}

@end
