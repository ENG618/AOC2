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
    int favYear;
    BOOL isFourByFour;
}

-(NSString*)getModel;
-(void)setModel:(NSString*)modleName;

@end
