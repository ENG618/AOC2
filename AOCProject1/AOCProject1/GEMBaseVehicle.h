//
//  GEMBaseVehicle.h
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GEMBaseVehicle : NSObject
{
    NSString *model;
    int modelYear;
    BOOL isFourByFour;
    int fuleEconomy;
}

-(NSString*)getModel;
-(void)setModel:(NSString*)modleName;
-(int)getFuleEconomy;

@end
