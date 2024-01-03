//
//  Circle.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 03.01.2024.
//

#import <Cocoa/Cocoa.h>
#import "AbstractFigure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : NSObject <AbstractFigure>

@property (nonatomic, readonly) float piNumber;
@property (nonatomic, readonly) NSString *name;
@property (nonatomic) NSInteger diameter;

-(instancetype)initWithDiameter : (NSInteger)diameter;


@end

NS_ASSUME_NONNULL_END
