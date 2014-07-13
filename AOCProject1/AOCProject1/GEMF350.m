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
    self = [super init];
    if (self) {
        model = @"Ford F-150";
        modelYear = 2012;
        isFourByFour = YES;
        isDesel = YES;
        [super printName];
    }
    return self;
}

// Override base class fule economy method
// Calulates fule economy based on vehicle year
-(int)getFuleEconomy
{
    int newFuleEconomy = fuleEconomy;
    
    // Calculation adjustment from model year
    if (modelYear > 2000) {
        newFuleEconomy = fuleEconomy + 5;
    }else if (modelYear < 1980) {
        newFuleEconomy = fuleEconomy - 5;
    }
    
    // Additional calculation adjustment from if desel powered
    if (isDesel) {
        newFuleEconomy = newFuleEconomy + 7;
    }
    
    return newFuleEconomy;
}

@end
