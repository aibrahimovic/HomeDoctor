//
//  Medicine.m
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "Medicine.h"

@implementation Medicine
- (id)initMedicineId:(int)idM name:(NSString *)name structure:(NSString *)structure uses:(NSString *)uses sideEffects:(NSString *)sideEffects
{
    self = [super init];
    
    self.idM = idM;
    self.name = name;
    self.structure = structure;
    self.uses = uses;
    self.sideEffects = sideEffects;
    // int a jednako dva
    return self;
}

-(int)getId
{
    return self.idM;
}

-(NSString*)getName
{
    return self.name;
}
-(NSString*)getStructure
{
    return self.structure;
}

-(NSString*)getUses
{
    return self.uses;
}
-(NSString*)getSideEffects
{
    return self.sideEffects;
}
/*-(void)setId:(int)id1
 {
 self.id= id1;
 }
 -(void)setName:(NSString *)name1
 {
 self.name= name1;
 }
 -(void)setStructure:(NSString *)structure1
 {
 self.structure = structure1;
 }
 -(void)setSideEffects:(NSString *)sideEffects1
 {
 self.sideEffects = sideEffects1;
 }
 -(void)setUses:(NSString *)uses1
 {
 self.uses = uses1;
 }*/
@end
