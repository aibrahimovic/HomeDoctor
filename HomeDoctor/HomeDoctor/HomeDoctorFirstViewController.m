//
//  HomeDoctorFirstViewController.m
//  HomeDoctor
//
//  Created by user23960 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "HomeDoctorFirstViewController.h"

@interface HomeDoctorFirstViewController ()

@end

@implementation HomeDoctorFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
