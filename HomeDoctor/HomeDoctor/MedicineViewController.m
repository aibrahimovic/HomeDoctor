//
//  MedicineViewController.m
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "MedicineViewController.h"
#import "Medicine.h"

@interface MedicineViewController ()
@property NSString* probni;
@property NSArray *nizMeddicine;
@property Medicine *m;
@end

@implementation MedicineViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)setMedicine_value:(NSString*)str {
    self.probni = str;
    //NSLog(@"%@", str);
}

-(void)postaviSve:(NSString*)str {
    for (Medicine *me in self.nizMeddicine) {
        if (me.name == str) {
            self.t_medicineStructure.text = me.structure;
            self.t_medicineUses.text = me.uses;
            self.t_medicineSideEffects.text = me.sideEffects;
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nizMeddicine = [NSArray alloc];
    self.m = [Medicine alloc];
    self.t_medicineName.text = self.probni;
    self.m.idM = 1;
    self.m.name = @"Neofen";
    self.m.structure = @"Ibuprofen";
    self.m.uses = @"Jedna tableta";
    self.m.sideEffects = @"Nema";
    
    self.nizMeddicine = @[self.m];
    NSString *a = self.t_medicineName.text;
    NSLog(@"%@", a);
    [self postaviSve:@"Neofen"];
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

@end
