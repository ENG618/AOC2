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

// Lables
@property (strong, nonatomic) IBOutlet UILabel *vehicleOneLable;
@property (strong, nonatomic) IBOutlet UILabel *vehicleOneDescription;
@property (strong, nonatomic) IBOutlet UILabel *vehicleTwoLable;
@property (strong, nonatomic) IBOutlet UILabel *vehicleTwoDescription;
@property (strong, nonatomic) IBOutlet UILabel *vehicleThreeLable;
@property (strong, nonatomic) IBOutlet UILabel *vehicleThreeDescription;

// Buttons
- (IBAction)onClick:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *butnOne;
@property (strong, nonatomic) IBOutlet UIButton *butnTwo;
@property (strong, nonatomic) IBOutlet UIButton *butnThree;



@end

@implementation GEMViewController

@synthesize butnOne, butnTwo, butnThree;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create instance of factory
    GEMVehicleFactory *factory = [[GEMVehicleFactory alloc] init];
    // Check validity
    if (factory) {
        
        // Instantiate F-350
        GEMF350 *f350 = (GEMF350*)[GEMVehicleFactory getVehicle:F350];
        // Check validity
        if (f350) {
            self.vehicleOneLable.text = [f350 model];
            self.vehicleOneDescription.text = [NSString stringWithFormat:@"My favorite modle year is %i, and it gets about %impg", [f350 modelYear], [f350 getFuleEconomy]];
        }
        
        // Instantiate Mustang
        GEMBaseVehicle *mustang = [GEMVehicleFactory getVehicle:MUSTANG];
        // Check validity
        if (mustang) {
            self.vehicleTwoLable.text = [mustang model];
            self.vehicleTwoDescription.text = [NSString stringWithFormat:@"My favorite modle year is %i, and it gets about %impg", [mustang modelYear], [mustang getFuleEconomy]];
        }
        
        // Instantiate Wrangler
        GEMBaseVehicle *wrangler = [GEMVehicleFactory getVehicle:WRANGLER];
        // Check validity
        if (wrangler) {
            self.vehicleThreeLable.text = [wrangler model];
            self.vehicleThreeDescription.text = [NSString stringWithFormat:@"My favorite modle year is %i, and it gets about %impg", [wrangler modelYear], [wrangler getFuleEconomy]];        }
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Buttons

- (IBAction)onClick:(id)sender {
    
    // Instance of UIButton
    UIButton *btn = (UIButton*)sender;
    
    switch (btn.tag) {
        // Button 1 pushed
        case 0:
            NSLog(@"ButtonOne was pressed");
            
            // Disable buttin if pressed
            butnOne.enabled = NO;
            // Ensure all other buttons are availible
            butnTwo.enabled = YES;
            butnThree.enabled = YES;
            break;
        // Button 2 pushed
        case 1:
            NSLog(@"ButtonTwo was pressed");
            
            // Disable buttin if pressed
            butnTwo.enabled = NO;
            // Ensure all other buttons are availible
            butnOne.enabled = YES;
            butnThree.enabled = YES;
            break;
        // Button 3 pushed
        case 2:
            NSLog(@"ButtonThree was pressed");
            
            // Disable buttin if pressed
            butnThree.enabled = NO;
            // Ensure all other buttons are availible
            butnOne.enabled = YES;
            butnTwo.enabled = YES;
            break;
            
        default:
            
            // If no button is registered as clicked log message to console
            NSLog(@"Something went wrong and no button was regesterd");
            
            // If no button is registered as clicked show an alertView
            UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Something went wrong!" message:@"Please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            
            [errorAlert show];
            
            break;
    }
}
@end
