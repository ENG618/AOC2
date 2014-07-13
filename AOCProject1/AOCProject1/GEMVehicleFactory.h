//
//  GEMVehicleFactory.h
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GEMBaseVehicle.h"
#import "GEMF350.h"
#import "GEMMustang.h"
#import "GEMWrangler.h"


@interface GEMVehicleFactory : NSObject

-(GEMBaseVehicle*)getVehicle:(EVehicleType)vehicleType;

//+(void)printVehicle:int

@end
