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
        favYear = 0000;
        isFourByFour = NO;
        
        
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

@end
