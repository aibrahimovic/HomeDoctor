//
//  Symptom.m
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "Symptom.h"

@implementation Symptom
-(id)initSymptomId:(int)_id Description:(NSString*)desc {
    
    self = [super init];
    self._id = _id;
    self.description = desc;
    return self;
}

-(int)getId {
    return self._id;
}


-(void)setId:(int)id1 {
    self.id = id1;
}

-(NSString*)getDescription {
    return self.description;
}

-(void)setDescription:(NSString *)description1 {
    self.description = description1;
}@end
