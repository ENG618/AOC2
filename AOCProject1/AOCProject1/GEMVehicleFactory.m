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
    if (vehicleType == vehicleType_F350) {
        currentVehicle = [[GEMF350 alloc] init];
        return currentVehicle;
        
    }else if (vehicleType == vehicleType_Mustang){
        currentVehicle = [[GEMMustang alloc] init];
        return currentVehicle;
        
    }else if (vehicleType == vehicleType_Wrangler){
        currentVehicle = [[GEMWrangler alloc] init];
        return currentVehicle;
    }
    return nil;
}

@end
