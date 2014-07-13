//
//  GEMF350.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMF350.h"

@implementation GEMF350

// Creates getter and setter method for properties
@synthesize isDesel;

-(id)init
{
    self = [super init];
    if (self) {
        [self setModel:@"Ford F-150"];
        [self setModelYear:2012];
        [self setIsFourByFour:YES];
        [self setIsDesel:YES];
        [super printName];
    }
    return self;
}

// Override base class fule economy method
// Calulates fule economy based on vehicle year
-(int)getFuleEconomy
{
    int newFuleEconomy = [self fuleEconomy];
    
    // Calculation adjustment from model year
    if ([self modelYear] > 2000) {
        newFuleEconomy = [self fuleEconomy] + 5;
    }else if ([self modelYear] < 1980) {
        newFuleEconomy = [self fuleEconomy] - 5;
    }
    
    // Additional calculation adjustment from if desel powered
    if (isDesel) {
        newFuleEconomy = newFuleEconomy + 7;
    }
    
    NSLog(@"The fule economy specific to F-350 is: %i", newFuleEconomy);
    
    return newFuleEconomy;
}

@end
