//
//  Doctor.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 04.01.2024.
//

#import "Doctor.h"

@implementation Doctor

//MARK: Instance methods
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self){
        self.name = name;
    }
    return self;
}

- (void)prescribeMedicine {
    NSLog(@"Doctor %@ prescribing medicine to a patient", self.name);
    [self.delegate toTakeMedicine];
}

- (void)confirmationOfTakingMedication { 
    NSLog(@"Ok! Good job!");
}

@end
