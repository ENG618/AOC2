//
//  GEMF350.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMF350.h"

@implementation GEMF350

-(id)init
{
    if (self = [super init]) {
        model = @"Ford F-150";
        modelYear = 2012;
        isFourByFour = YES;
        isDesel = YES;
    }
    return self;
}

@end
