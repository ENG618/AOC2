//
//  GEMViewController.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/12/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMViewController.h"
#import "GEMVehicleFactory.h"
@class GEMBaseVehicle;

@interface GEMViewController ()
@property (strong, nonatomic) IBOutlet UILabel *vehicleOneLable;
@property (strong, nonatomic) IBOutlet UILabel *vehicleOneDescription;
@property (strong, nonatomic) IBOutlet UILabel *vehicleTwoLable;
@property (strong, nonatomic) IBOutlet UILabel *vehicleTwoDescription;
@property (strong, nonatomic) IBOutlet UILabel *vehicleThreeLable;
@property (strong, nonatomic) IBOutlet UILabel *vehicleTreeDescription;

@end

@implementation GEMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Instantiate F-350
    [GEMVehicleFactory getVehicle:vehicleType_F350];
    
    // Instantiate instance of factory
    //GEMVehicleFactory *factory = [[GEMVehicleFactory alloc] init];
    // Check validity
    //if (factory) {
        
        
        
        
        
        
        
        
        
        
    //}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
