//
//  GEMBaseVehicle.h
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GEMBaseVehicle : NSObject
//{
//@protected
//    NSString *model;
//    int modelYear;
//    BOOL isFourByFour;
//    int fuleEconomy;
//}

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


// Base methods

// Initialize
-(id)init;

//// Getter
//-(NSString*)getVehicle;
//-(int)getModelYear;
//-(int)getFuleEconomy;
//
//// Setter
//-(void)setVehicle:(NSString*)modleName;

// Calulatioin
-(int)calcFuleEconomy;

-(void)printName;

@end
