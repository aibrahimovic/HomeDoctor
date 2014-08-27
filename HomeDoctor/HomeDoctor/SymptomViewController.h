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
<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *t_symptomName;
@property (weak, nonatomic) IBOutlet UITableView *tl_symptomDiseases;
@property(nonatomic, strong) NSArray *sveBolesti;


-(void)setSymptom_value:(Symptom*)s;
-(void)setSymptom_proba:(NSString*)str;
-(void)writeSymptom:(NSString*)str;

@end
