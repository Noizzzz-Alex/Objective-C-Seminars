//
//  Rectangle.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 03.01.2024.
//

#import <Foundation/Foundation.h>
#import "AbstractFigure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject <AbstractFigure>

@property (nonatomic, readonly) NSString *name;
@property (nonatomic) float height;
@property (nonatomic) float weight;

-(instancetype)initWithHeightAndWeight : (float)height weight:(float) weight;


@end

NS_ASSUME_NONNULL_END
