//
//  HomeDoctorSecondViewController.h
//  HomeDoctor
//
//  Created by user23960 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeDoctorSecondViewController : UIViewController
{
    NSArray *listOfMedicine;
}
@property (weak, nonatomic) IBOutlet UITextField *t_medicine;

//@property (nonatomic, retain) NSArray *medicineList;

@property (nonatomic, retain) IBOutletCollection(UITableView) NSArray *medicineList;


@end
