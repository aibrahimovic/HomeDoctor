//
//  Disease.m
//  HomeDoctor
//
//  Created by user23678 on 8/24/14.
//  Copyright (c) 2014 Azra. All rights reserved.
//

#import "Disease.h"

@implementation Disease
-(id)initDiseaseId:(int)idD Name:(NSString *)name lSymptoms:(NSArray *)symptoms lMedicine:(NSArray *)medicine {
    
    self = [super init];
    self.idD = idD;
    self.name = name;
    self.listSymptoms= symptoms;
    self.listMedicine = medicine;
    return self;
}

-(int)getId {
    return self.idD;
}

-(void)setId:(int)id1 {
    self.idD = id1;
}

-(NSString*)getName {
    return self.name;
}

-(void)setName:(NSString *)name1 {
    self.name = name1;
}

-(int)symptomsNumber {
    int sNum;
    sNum = self.listSymptoms.count;
    return sNum;
}

-(int)medicineNumber {
    int lNum;
    lNum = self.listMedicine.count;
    return lNum;
}
@end
