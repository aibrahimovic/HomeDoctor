//
//  Medicine.h
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Medicine : NSObject
@property int idM;
@property NSString *name;
@property NSString *structure;
@property NSString *uses;
@property NSString *sideEffects;

- (id)initMedicineId:(int)idM name:(NSString *)name structure:(NSString *)structure uses:(NSString *)uses sideEffects:(NSString *)sideEffects;

-(int)getId;
-(NSString*)getName;
-(NSString*)getStructure;
-(NSString*)getUses;
-(NSString*)getSideEffects;
/*
 -(void)setId:(int)id1;
 -(void)setName:(NSString *)name1;
 -(void)setStructure:(NSString *)structure1;
 -(void)setSideEffects:(NSString *)sideEffects1;
 -(void)setUses:(NSString *)uses1;
 */
@end
