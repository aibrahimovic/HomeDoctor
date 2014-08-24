//
//  MedicineViewController.h
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MedicineViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *t_medicineName;

@property (weak, nonatomic) IBOutlet UITextField *t_medicineStructure;

@property (weak, nonatomic) IBOutlet UITextField *t_medicineUses;

@property (weak, nonatomic) IBOutlet UITextField *t_medicineSideEffects;

@property (weak, nonatomic) IBOutlet UITableView *tl_medicineDiseases;

@end
