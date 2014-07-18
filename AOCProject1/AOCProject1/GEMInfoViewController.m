//
//  GEMInfoViewController.m
//  AOCProject1
//
//  Created by Eric Garcia on 7/17/14.
//  Copyright (c) 2014 Garcia Enterprise. All rights reserved.
//

#import "GEMInfoViewController.h"

@interface GEMInfoViewController ()
- (IBAction)onClose:(id)sender;

@end

@implementation GEMInfoViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
