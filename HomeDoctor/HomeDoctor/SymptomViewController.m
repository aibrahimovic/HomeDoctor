//
//  SymptomViewController.m
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "SymptomViewController.h"
#import "Symptom.h"
#import "SymptomTableViewCell.h"

@interface SymptomViewController ()
@property NSString* probni;
@property NSArray *niz;
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
    self.niz = @[@"Azra"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setSymptom_value:(Symptom*)s {
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//nesto ne valja ovdje
    return 1;
}

- (IBAction)infoClicked:(id)sender {
    [self performSegueWithIdentifier:@"idi" sender:sender];
}

//proba

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SymptomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"idi"
                                  forIndexPath:indexPath];
    
    if (cell == nil)
    {
        cell = [[SymptomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"idi"];
    }
    
    cell.textLabel.text = [self.niz objectAtIndex:indexPath.row];
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

/*if ([[segue identifier] isEqualToString:@"showDetail"]) {
 NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
 NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
 [[segue destinationViewController] setDetailItem:object];
 }*/

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"idi"])
    {
        /*NSIndexPath *indeks = [self.slanaKategorije indexPathForSelectedRow];
        NSString *string = [_kategorijeNiz objectAtIndex:indeks.row];
        //ReceptiTableViewController *slanaJelaTable = (ReceptiTableViewController*)[segue destinationViewController];
        [[segue destinationViewController] posaljiKategoriju:string];*/
        
    }
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
