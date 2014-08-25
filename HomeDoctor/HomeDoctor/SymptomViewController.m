//
//  SymptomViewController.m
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "SymptomViewController.h"
#import "Symptom.h"

@interface SymptomViewController ()
@property NSString* probni;
@end

@implementation SymptomViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)setSymptom_proba:(NSString*)str {
    self.probni = str;
    //NSLog(@"%@", str);
}


-(void)writeSymptom:(NSString*)str {
    Symptom *s;
    s = [Symptom alloc];
    s.idS = 1;
    s.description = @"Glavobolja";
   
    NSArray *probni = [NSArray arrayWithObject:s];
    //probni = [[NSArray alloc] initWithObjects:s, nil];
    for (Symptom *sy in probni) {
        if (sy.description == str) {
            NSLog(@"radi");
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.t_symptomName.text = self.probni;
    // Do any additional setup after loading the view.
    //self.t_symptomName.text =@"Glavobolja";
    //NSString *pom = self.t_symptomName.text;
    //NSLog(@"%@", pom);
    //[self writeSymptom:pom];
   // NSArray *a = [NSArray arrayWithObject:@"Azra"];
    
    //self.probniList.text = a;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setSymptom_value:(Symptom*)s {
    
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
