//
//  HomeDoctorDatabase.m
//  HomeDoctor
//
//  Created by user23678 on 8/26/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "HomeDoctorDatabase.h"
#import "Medicine.h"

@implementation HomeDoctorDatabase

static HomeDoctorDatabase *_database;

+ (HomeDoctorDatabase*)database {
    if (_database == nil) {
        _database = [[HomeDoctorDatabase alloc] init];
    }
    return _database;
}/*
- (id)init {
    if ((self = [super init])) {
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"medicine"
                                                             ofType:@"sqlite3"];
        
        if (sqlite3_open([sqLiteDb UTF8String], &_database) != SQLITE_OK) {
            NSLog(@"Failed to open database!");
        }
    }
    return self;
}

- (void)dealloc {
    sqlite3_close(_database);
    //[super dealloc];
}*/


/*
- (NSArray *)info{
    
   // NSMutableArray *retval = [[[NSMutableArray alloc] init] autorelease];
    NSString *query = @"SELECT id, name, structure, uses, sideEffects FROM medicine";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)== SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int idM = sqlite3_column_int(statement, 0);
            char *nameChars = (char *) sqlite3_column_text(statement, 1);
            char *structureChars = (char *) sqlite3_column_text(statement, 2);
            char *usesChars = (char *) sqlite3_column_text(statement, 3);
            char *sideEffectsChars = (char *) sqlite3_column_text(statement, 4);
            NSString *name = [[NSString alloc] initWithUTF8String:nameChars];
            NSString *structure = [[NSString alloc] initWithUTF8String:structureChars];
            NSString *uses = [[NSString alloc] initWithUTF8String:usesChars];
            NSString *sideEffects = [[NSString alloc] initWithUTF8String:sideEffectsChars];
            
            Medicine *info = [[Medicine alloc]
            initMedicineId:idM name:name structure:structure uses:uses sideEffects:sideEffects];
      //      [retval addObject:info];
          //  [name release];
            //[structure release];
           // [uses release];
           // [sideEffects release];
           // [info release];
        }
        sqlite3_finalize(statement);
    }
   // return retval;
    return @"blab";
    
}*/
@end