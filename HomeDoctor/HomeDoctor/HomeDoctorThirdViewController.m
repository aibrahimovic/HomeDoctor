//
//  HomeDoctorThirdViewController.m
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "HomeDoctorThirdViewController.h"
#import "DiseaseViewController.h"

@interface HomeDoctorThirdViewController ()

@end

@implementation HomeDoctorThirdViewController

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

- (IBAction)diseaseClick:(id)sender {
    @try {
        [self performSegueWithIdentifier:@"searchDisease" sender:sender];
        
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"searchDisease	"]) {
         DiseaseViewController *controller = (DiseaseViewController *)[segue destinationViewController];
        
        NSString *prenos = self.t_disease.text;
        [controller setDisease_value:prenos];
    }
}



@end
