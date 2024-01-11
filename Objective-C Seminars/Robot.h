//
//  Robot.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 12.01.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject

@property (nonatomic) NSInteger coordX;
@property (nonatomic) NSInteger coordY;
@property (nonatomic, readonly) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (void)run:(NSString* (^)(NSString*))block;

@end

NS_ASSUME_NONNULL_END
