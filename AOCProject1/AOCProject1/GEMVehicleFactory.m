//
//  GEMVehicleFactory.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMVehicleFactory.h"

@implementation GEMVehicleFactory

+(GEMBaseVehicle*)getVehicle:(EVehicleType)vehicleType
{
    // Method variable
    GEMBaseVehicle * currentVehicle;
    
    // Checking vehicle type and instanciating correct vehicle
    if (vehicleType == F350) {
        currentVehicle = [[GEMF350 alloc] init];
        return currentVehicle;
        
    }else if (vehicleType == MUSTANG){
        currentVehicle = [[GEMMustang alloc] init];
        return currentVehicle;
        
    }else if (vehicleType == WRANGLER){
        currentVehicle = [[GEMWrangler alloc] init];
        return currentVehicle;
    }
    return nil;
}

@end
