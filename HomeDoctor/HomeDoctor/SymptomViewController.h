//
//  SymptomViewController.h
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SymptomViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *t_symptomName;
@property (weak, nonatomic) IBOutlet UITableView *tl_symptomDiseases;

@end
