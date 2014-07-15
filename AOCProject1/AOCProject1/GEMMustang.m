//
//  GEMMustang.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMMustang.h"

@implementation GEMMustang

// Creates getter and setter method for properties
@synthesize horsePower;

-(id)init
{
    self = [super init];
    if (self) {
        [self setModel:@"Ford Mustang"];
        [self setModelYear:1967];
        [self setIsFourByFour:NO];
        [self setHorsePower:351];
        [super printName];
    }
    return self;
}

// Override base class fule economy method
// Calulates fule economy based on vehicle year
-(int)calcFuleEconomy
{
    int newFuleEconomy = [self fuleEconomy];
    
    // Calculation adjustment from model year
    if ([self modelYear] > 2000) {
        newFuleEconomy = [self fuleEconomy] + 5;
    }else if ([self modelYear] < 1980) {
        newFuleEconomy = [self fuleEconomy] - 5;
    }
    
    // Additional calculation adjustment from hoursepower
    if (horsePower > 300) {
        newFuleEconomy = newFuleEconomy - 2;
    }
    
    NSLog(@"The fule economy specific to Mustang is: %i", newFuleEconomy);

    return newFuleEconomy;
}

@end
