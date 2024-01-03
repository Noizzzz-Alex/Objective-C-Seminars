//
//  PatientDelegate.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 04.01.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate <NSObject>

-(void)confirmationOfTakingMedication;

@end

NS_ASSUME_NONNULL_END
