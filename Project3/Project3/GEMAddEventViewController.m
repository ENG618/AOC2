//
//  GEMAddEventViewController.m
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMAddEventViewController.h"
@class GEMEventsViewController;

@interface GEMAddEventViewController ()

@property (strong, nonatomic) IBOutlet UITextField *eventDescriptionsTV;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIButton *closeKeyboardBtn;
@property (strong, nonatomic) IBOutlet UILabel *swipeToSave;

@end

@implementation GEMAddEventViewController

@synthesize eventString, eventDate;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.datePicker.timeZone = [NSTimeZone localTimeZone];
}

-(void)viewWillAppear:(BOOL)animated
{
    // Hide closeKeyboard button by default
    [self.closeKeyboardBtn setHidden:YES];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    // Init gesture recognizer
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    // Add swipe direction
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    // Link gesture to lable
    [self.swipeToSave addGestureRecognizer:rightSwiper];
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
        // Set min date to today
        [dp setMinimumDate:[[NSDate alloc] initWithTimeIntervalSinceNow: 0]];
        
        
        NSDate *date = dp.date;
        
        NSLog(@"the selected date is: %@", date);
    }
}

//#pragma mark - Swipe handler
//
-(void)onRight:(UIGestureRecognizer*)recognizer{
//-(void)validateEvent{
    if (self.eventDescriptionsTV.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Event description blank"
                                                        message:@"Please add an event description\n\n Or cancle add new event."
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"Okay", nil];
        
        [alert show];
    }else if (self.eventDescriptionsTV.text.length > 0){
        NSLog(@"Lable was swiped to save");
        // Save code goes here
        
        // Close keyboard
        [self.eventDescriptionsTV resignFirstResponder];
        
        // Call closeVC method
        //[self closeVC];
        [self performSegueWithIdentifier:@"unwindToEvents" sender:self];
    }
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) {
        NSLog(@"Cancel button pressed from alertView");
        // Call closeVC method
        [self closeVC];
    }else if (buttonIndex ==1){
        NSLog(@"Okay button pressed from alertView");
    }
}


#pragma mark - Buttons

- (IBAction)onCancel:(id)sender
{
    NSLog(@"Cancel button was pressed");
    // Call closeVC method
    [self closeVC];
}

/*
// Depricated save button
- (IBAction)onSave:(id)sender
{
    NSLog(@"Save button was pressed");
    // Save code goes here
    
    // Close keyboard
    [self.eventDescriptionsTV resignFirstResponder];
    
    
    // Call delegate to pass info to first VC
    [self.delegate didCreateEventWithName:self.eventDescriptionsTV.text andDate:self.datePicker.date];
    
    // Call closeVC method
    [self closeVC];
 
}
*/

- (IBAction)onKeyboardClose:(id)sender
{
    NSLog(@"Close Keyboard was clicked");
    
    // Close keyboard
    [self.eventDescriptionsTV resignFirstResponder];
}

-(void)closeVC{
    // Close VC
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Validate event
    //[self validateEvent];
    if ([segue.identifier isEqualToString:@"unwindToEvents"]) {
        eventDate = self.datePicker.date;
        eventString = self.eventDescriptionsTV.text;
    }
}

@end
