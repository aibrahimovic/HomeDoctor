//
//  HomeDoctorSecondViewController.m
//  HomeDoctor
//
//  Created by user23960 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "HomeDoctorSecondViewController.h"
#import "MedicineViewController.h"
#import "HomeDoctorDatabase.h"
#import "Medicine.h"

@interface HomeDoctorSecondViewController ()

@end

@implementation HomeDoctorSecondViewController
@synthesize medicineList = listOfMedicine;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.medicineList = [HomeDoctorDatabase database].info;
    self.title = @"List of medicine";}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)medicineClick:(id)sender {
    @try {
        [self performSegueWithIdentifier:@"searchMedicine" sender:sender];
        
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
}

//IN DEALLOC SE TREBA OVO NAPISATI self.medicineList = nil;

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"searchMedicine"]) {
        MedicineViewController *controller = (MedicineViewController *)[segue destinationViewController];
        
        NSString *prenos = self.t_medicine.text;
        [controller setMedicine_value:prenos];
        //controller.t_medicineName.text = self.t_medicine.text;
    }
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [self.medicineList count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
   
    Medicine *object =[listOfMedicine objectAtIndex:indexPath.row];
    
    cell.textLabel.text = object.name;
    return cell;
}


@end
