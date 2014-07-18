//
//  GEMBaseVehicle.h
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GEMBaseVehicle : NSObject

typedef enum
{
    F350=0,
    MUSTANG,
    WRANGLER
}EVehicleType;

// Base properties
@property NSString *model;
@property int modelYear;
@property BOOL isFourByFour;
@property int fuleEconomy;
@property int basePrice;


// Base methods

// Initialize
-(id)init;

// Getter
-(int)getFuleEconomy;
-(int)getPrice:(int)numVehiclesRequested;

// Calulatioin
-(int)calcFuleEconomy;
-(int)calcPrice:(int)numVehicles;

-(void)printName;

@end
