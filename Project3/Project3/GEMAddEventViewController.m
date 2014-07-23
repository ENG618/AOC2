//
//  GEMAddEventViewController.m
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMAddEventViewController.h"

@interface GEMAddEventViewController ()

@end

@implementation GEMAddEventViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Buttons

- (IBAction)onCancel:(id)sender
{
    NSLog(@"Cancel button was pressed");
    // Close VC
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onSave:(id)sender
{
    NSLog(@"Save button was pressed");
    // Save code goes here
}

- (IBAction)onKeyboardClose:(id)sender
{
    NSLog(@"Close Keyboard was closed");
    // Close keyboard code goes here
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
