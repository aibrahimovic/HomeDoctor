//
//  Symptom.h
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Symptom : NSObject
@property int idS;
@property NSString * description;

-(id)initSymptomId:(int)idS Description:(NSString*)desc;
-(int)getId;
-(void)setId:(int)id1;
-(NSString*)getDescription;
-(void)setDescription:(NSString *)description;
@end
