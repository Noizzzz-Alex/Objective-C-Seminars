//
//  Triangle.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 03.01.2024.
//

#import "Triangle.h"

@implementation Triangle

- (float)calculatingArea {
    float semiPerimeter = [self calculatingPerimeter] / 2;
    return  sqrt(semiPerimeter * (semiPerimeter - self.rightTurn) * (semiPerimeter - self.leftTurn) * (semiPerimeter - self.foundation));
}

- (float)calculatingPerimeter { 
    return self.rightTurn + self.leftTurn + self.foundation;
}


- (nonnull instancetype)initWithRightLeftTurnsAndFoundation:(float)rightTurn leftTurn:(float)leftTurn foundation:(float)foundation {
    self = [super init];
    if (self){
        self.rightTurn = rightTurn;
        self.leftTurn = leftTurn;
        self.foundation = foundation;
        _name = @"Triangle";
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Fugure: %@  | Area: %.2f  | Perimeter: %.2f", _name, [self calculatingArea], [self calculatingPerimeter]];
}

@end
