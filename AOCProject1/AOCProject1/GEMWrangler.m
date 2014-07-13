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
        numDoors = 4;
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
    
    // Additional calculation adjustment from number of doors
    if (numDoors == 4) {
        newFuleEconomy = newFuleEconomy - 1;
    }else if (numDoors == 2){
        newFuleEconomy = newFuleEconomy + 1;
    }
    
    return newFuleEconomy;
}



@end
