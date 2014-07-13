//
//  GEMBaseVehicle.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMBaseVehicle.h"
#import "GEMVehicleFactory.h"

@implementation GEMBaseVehicle

// Creates getter and setter method for properties
@synthesize model,modelYear, isFourByFour, fuleEconomy;

-(id)init
{
    self = [super init];
    if (self) {
        model = @"Base Model";
        modelYear = 2014;
        isFourByFour = NO;
        fuleEconomy = 15;

    }
    return self;
}

-(id)initWithVehicle:(NSString*)vModel vYear:(int)vYear v4x4Status:(BOOL)v4x4Status
{
    model = vModel;
    modelYear = vYear;
    isFourByFour = v4x4Status;
    [self printName];
    
    return self;
}

// Privet method print name to consol
-(void)printName
{
    NSLog(@"The vehicle: %@ has been intantiated", model);
}

// Returns modle name
-(NSString*)getVehicle
{
    return model;
}

-(int)getModelYear
{
    return modelYear;
}

-(int)getFuleEconomy
{
    return [self calcFuleEconomy];
}

// Created model
-(void)setVehicle:(NSString *)modleName
{
    
}

// Calulates fule economy based on vehicle year
-(int)calcFuleEconomy
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








