//
//  GEMAddEventViewController.m
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMAddEventViewController.h"

@interface GEMAddEventViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *eventDescriptionsTV;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIButton *closeKeyboardBtn;

@end

@implementation GEMAddEventViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    // Hide closeKeyboard button by default
    [self.closeKeyboardBtn setHidden:YES];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Keyboard handler

-(void)keyboardWillShow:(NSNotification *)notification
{
    // Show hideKeyboard button
    [self.closeKeyboardBtn setHidden:NO];
}

-(void)keyboardWillHide:(NSNotification *)notification
{
    // Hide hideKeyboard button
    [self.closeKeyboardBtn setHidden:YES];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    
    return YES;
}

#pragma mark - DatePicker

- (IBAction)onDatePickerChange:(id)sender {
    // Cast sender to UIDatePicker
    UIDatePicker *dp = (UIDatePicker *)sender;
    // Check validity
    if (dp) {
        NSDate *date = dp.date;
        
        NSLog(@"the selected date is: %@", date);
    }
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
    NSLog(@"Close Keyboard was clicked");
    
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
