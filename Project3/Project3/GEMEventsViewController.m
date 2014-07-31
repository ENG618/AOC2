//
//  GEMEventsViewController.m
//  Project3
//
//  Created by Eric Garcia on 7/22/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMEventsViewController.h"

@interface GEMEventsViewController ()

@property (strong, nonatomic) IBOutlet UITextView *eventTV;
@property (strong, nonatomic) IBOutlet UILabel *swipeNewEvent;

@end

@implementation GEMEventsViewController

@synthesize event, eventDate, eventDateString, currentEvents;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    originalCenter = self.view.center;
    self.eventTV.tag = 0;
    
    // Init gesture recognizer
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    // Add getsure
    leftSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    
    // Obtain path to user defaults
    defaults = [NSUserDefaults standardUserDefaults];
}

-(void)viewWillAppear:(BOOL)animated
{
    // Cache the original size of the textview
    tvFrame = self.eventTV.frame;
    butnFrame = self.swipeNewEvent.frame;
    
    // Set if data is in userdefaults load to eventsTV
    if (defaults) {
        // obtain string from defaults
        NSString *events = [defaults objectForKey:@"events"];
        if (events) {
            self.eventTV.text = events;
        }
    }
    
    
    // Receive notification for when keyboard will show
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];

    // Receive notification for when keyboard will hide
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    // Init gesture recognizer
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    // Add swipe direction
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    // Link gesture to lable
    [self.swipeNewEvent addGestureRecognizer:leftSwiper];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Keyboard handler

-(void)keyboardWillShow:(NSNotification *)notification
{
    // Obtain keyboard frame (width/height)
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    // Calculate new tv height
    CGRect newFrame = CGRectMake(self.eventTV.frame.origin.x, self.eventTV.frame.origin.y, self.eventTV.frame.size.width, self.eventTV.frame.size.height - keyboardSize.height );
    
    // Set tv frame
    [self.eventTV setFrame:newFrame];
    
    // Calculate new but height
    CGRect newBtnFrame = CGRectMake(self.swipeNewEvent.frame.origin.x, self.swipeNewEvent.frame.origin.y - keyboardSize.height, self.swipeNewEvent.frame.size.width, self.swipeNewEvent.frame.size.height);
    
    // Set butn frame
    [self.swipeNewEvent setFrame:newBtnFrame];
    
    
    
    // Move entire view up to allow room for keyboard
    //self.view.center = CGPointMake(originalCenter.x, originalCenter.y - keyboardSize.height + 38);
}

-(void)keyboardWillHide:(NSNotification *)notification
{
    // Restore original tv height
    [self.eventTV setFrame:tvFrame];
    
    // Restore original view
    //self.view.center = originalCenter;
    
    // Restore original butn height
    [self.swipeNewEvent setFrame:butnFrame];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    
    return NO;
}

#pragma mark - Swipe Gesture handler

-(void)onRight:(UIGestureRecognizer*)recognizer{
    [self performSegueWithIdentifier:@"newEventSegue" sender:self];
}

#pragma mark - GEMAddEvent Delegate

-(void)didCreateEventWithName:(NSString *)name andDate:(NSDate *)date
{
    // Love info passed from AddEventVC
    NSLog(@"Passed from delegate text:%@, date:%@", name, date);
    
    // Format date
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    //[dateFormatter setDateStyle:NSDateFormatterFullStyle];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    
    // Convert date to string
    eventDateString = [dateFormatter stringFromDate:date];
    NSLog(@"%@", eventDateString);
    
    if (self.eventTV.tag == 0) {
        NSLog(@"Default text");
        currentEvents = [NSString stringWithFormat:@"Event: %@\nEventDate: %@", name, eventDateString];
        
        // Update textview text
        self.eventTV.text = currentEvents;
        // INcriment tag
        self.eventTV.tag = self.eventTV.tag + 1;
    }else{
        NSLog(@"Custum text");
        currentEvents = [NSString stringWithFormat:@"%@\n\nEvent: %@\nEventDate: %@", self.eventTV.text, name, eventDateString];
        
        // Update textview text
        self.eventTV.text = currentEvents;
        // Incriment tag
        self.eventTV.tag = self.eventTV.tag + 1;
    }
    
}

#pragma mark - Buttons

- (IBAction)onSave:(id)sender {
    if (defaults) {
        // Obtaine events from TV
        NSString *eventsString = self.eventTV.text;
        // Save string to user defaults
        [defaults setObject:eventsString forKey:@"events"];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    GEMAddEventViewController *aevc = (GEMAddEventViewController *)[segue destinationViewController];
    
    // Set delegate
    [aevc setDelegate:self];
}

@end
