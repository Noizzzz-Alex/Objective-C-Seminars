//
//  Patient.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 04.01.2024.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
#import "PatientDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject<DoctorDelegate>

//MARK: Properties
@property (nonatomic) NSString *name;
@property(nonatomic,nullable,weak) id<PatientDelegate> delegate;


//MARK: Instance methods
-(instancetype)initWithName: (NSString*)name;

@end

NS_ASSUME_NONNULL_END
