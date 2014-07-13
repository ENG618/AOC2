//
//  GEMBaseVehicle.h
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    vehicleType_F350=0,
    vehicleType_Mustang,
    vehicleType_Wrangler
}EVehicleType;

@interface GEMBaseVehicle : NSObject
{
@protected
    NSString *model;
    int modelYear;
    BOOL isFourByFour;
    int fuleEconomy;
}

-(NSString*)getModel;
-(void)setModel:(NSString*)modleName;
-(int)getFuleEconomy;

@end
