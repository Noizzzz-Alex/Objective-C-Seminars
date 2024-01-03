//
//  Doctor.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 04.01.2024.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
#import "PatientDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject<PatientDelegate>

//MARK: Properties
@property (nonatomic) NSString *name;

@property (nonatomic, nullable, weak) id<DoctorDelegate> delegate;



//MARK: Instance methods
- (instancetype)initWithName: (NSString*)name;

- (void)prescribeMedicine;

@end

NS_ASSUME_NONNULL_END
