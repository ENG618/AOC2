//
//  GEMMustang.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMMustang.h"

@implementation GEMMustang

-(id)init
{
    if (self = [super init]) {
        model = @"Ford Mustang";
        modelYear = 1967;
        isFourByFour = NO;
        horsePower = 351;
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
    
    // Additional calculation adjustment from hoursepower
    if (horsePower > 300) {
        newFuleEconomy = newFuleEconomy - 2;
    }

    return newFuleEconomy;
}

@end
