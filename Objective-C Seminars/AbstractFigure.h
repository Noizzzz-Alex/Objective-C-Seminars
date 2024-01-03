//
//  AbstractFigure.h
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 03.01.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractFigure <NSObject>



- (float) calculatingArea;

- (float) calculatingPerimeter;

@end

NS_ASSUME_NONNULL_END
