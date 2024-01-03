//
//  Triangle.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 03.01.2024.
//

#import <Foundation/Foundation.h>
#import "AbstractFigure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : NSObject <AbstractFigure>

@property (nonatomic, readonly) NSString *name;
@property (nonatomic) float rightTurn;
@property (nonatomic) float leftTurn;
@property (nonatomic) float foundation;

-(instancetype)initWithRightLeftTurnsAndFoundation : (float)rightTurn leftTurn:(float) leftTurn foundation:(float) foundation;

@end

NS_ASSUME_NONNULL_END
