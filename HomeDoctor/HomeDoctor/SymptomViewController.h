//
//  SymptomViewController.h
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Symptom.h"

@interface SymptomViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *t_symptomName;
@property (weak, nonatomic) IBOutlet UITableView *tl_symptomDiseases;

-(void)setSymptom_value:(Symptom*)s;
-(void)setSymptom_proba:(NSString*)str;
-(void)writeSymptom:(NSString*)str;

@property (strong, nonatomic) IBOutletCollection(UITextView) NSArray *probniList;
@end
