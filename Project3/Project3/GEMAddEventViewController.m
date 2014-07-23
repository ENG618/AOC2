//
//  GEMAddEventViewController.m
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMAddEventViewController.h"

@interface GEMAddEventViewController ()
@property (strong, nonatomic) IBOutlet UITextField *eventDescriptionsTV;

@end

@implementation GEMAddEventViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Keyboard handler

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(void)keyboardWillShow:(NSNotification *)notification
{
    
}

-(void)keyboardWillHide:(NSNotification *)notification
{
    
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
    
    // Close keyboard
    [self.eventDescriptionsTV resignFirstResponder];
}

- (IBAction)onKeyboardClose:(id)sender
{
    NSLog(@"Close Keyboard was closed");
    
    // Close keyboard
    [self.eventDescriptionsTV resignFirstResponder];
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
