//
//  main.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 28.12.2023.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc]initWithName:@"Genry"];
        Patient *patient = [[Patient alloc]initWithName:@"Alex"];
        doctor.delegate = patient;
        patient.delegate = doctor;
        [doctor prescribeMedicine];
    }
    return 0;
}

