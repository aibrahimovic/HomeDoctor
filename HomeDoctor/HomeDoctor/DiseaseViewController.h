//
//  DiseaseViewController.h
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiseaseViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *t_diseaseName;
@property (weak, nonatomic) IBOutlet UITableView *tl_diseaseSymptoms;
@property (weak, nonatomic) IBOutlet UITableView *tl_diseaseMedicine;
-(void)setDisease_value:(NSString*)str;
@end
