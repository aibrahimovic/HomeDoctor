//
//  HomeDoctorAppDelegate.h
//  HomeDoctor
//
//  Created by user23960 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeDoctorAppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    UITabBarController  *_navController;
}

@property (nonatomic, retain) IBOutlet UITabBarController *navController;
@property (strong, nonatomic) UIWindow *window;

@end
