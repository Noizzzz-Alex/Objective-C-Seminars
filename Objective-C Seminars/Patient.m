//
//  Patient.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 04.01.2024.
//

#import "Patient.h"

@implementation Patient

//MARK: Instance methods
- (void)toTakeMedicine {
    NSLog(@"I %@ took my medicine", self.name);
    [self.delegate confirmationOfTakingMedication];
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self){
        self.name = name;
    }
    return self;
}

@end
