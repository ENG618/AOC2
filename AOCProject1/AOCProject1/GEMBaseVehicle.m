//
//  GEMBaseVehicle.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMBaseVehicle.h"
#import "GEMVehicleFactory.h"

// Privet methods
@interface GEMBaseVehicle ()
-(void)printName;
@end

@implementation GEMBaseVehicle

-(id)init
{
    if (self = [super init]) {
        model = @"Base Model";
        modelYear = 2014;
        isFourByFour = NO;
        fuleEconomy = 15;
    }
    return self;
}

// Print name to consol
-(void)printName
{
    NSLog(@"Selected model: %@", model);
}

// Returns modle name
-(NSString*)getModel
{
    return model;
}

// Created model
-(void)setModel:(NSString *)modleName
{
    
}

// Calulates fule economy based on vehicle year
-(int)getFuleEconomy
{
    int newFuleEconomy = fuleEconomy;
    
    if (modelYear > 2000) {
        newFuleEconomy = fuleEconomy + 5;
    }else if (modelYear < 1980) {
        newFuleEconomy = fuleEconomy - 5;
    }
    return newFuleEconomy;
}

@end








