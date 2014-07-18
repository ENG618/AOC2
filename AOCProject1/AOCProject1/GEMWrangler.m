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

// Creates getter and setter method for properties
@synthesize numDoors;

-(id)init
{
    self = [super init];
    if (self) {
        [self setModel:@"Jeep Wrangler"];
        [self setModelYear:2007];
        [self setIsFourByFour:YES];
        [self setNumDoors:4];
        [self setBasePrice:20000];
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
    
    // Additional calculation adjustment from number of doors
    if (numDoors == 4) {
        newFuleEconomy = newFuleEconomy - 1;
    }else if (numDoors == 2){
        newFuleEconomy = newFuleEconomy + 1;
    }
    
    NSLog(@"The fule economy specific to Wrangler is: %i", newFuleEconomy);
    
    return newFuleEconomy;
}



@end
