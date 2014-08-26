//
//  HomeDoctorDatabase.h
//  HomeDoctor
//
//  Created by user23678 on 8/26/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface HomeDoctorDatabase : NSObject {
    sqlite3 *_database;
}

+ (HomeDoctorDatabase*)database;
- (NSArray *)info;

@end