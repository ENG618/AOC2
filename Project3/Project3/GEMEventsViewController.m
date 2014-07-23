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

@end

@implementation GEMEventsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    // Cache the original size of the textview
    tvFrame = self.eventTV.frame;
    
    // Receive notification for when keyboard will show
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];

    // Receive notification for when keyboard will hide
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
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    CGRect newFrame = CGRectMake(self.eventTV.frame.origin.x, self.eventTV.frame.origin.y, 280.0f, self.eventTV.frame.size.height - keyboardSize.height);
    
    [self.eventTV setFrame:newFrame];
}

-(void)keyboardWillHide:(NSNotification *)notification
{
    [self.eventTV setFrame:tvFrame];
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
