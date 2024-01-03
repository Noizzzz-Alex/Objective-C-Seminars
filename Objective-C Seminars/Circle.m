//
//  Circle.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 03.01.2024.
//

#import "Circle.h"

@implementation Circle


- (float)calculatingArea {
    return powf([self calculatingPerimeter], 2) * _piNumber;
}

- (float)calculatingPerimeter {
    return 2 * (_piNumber * [self calculatingRadius]);
}

- (float)calculatingRadius {
    return  self.diameter / 2;
}

- (instancetype)initWithDiameter:(NSInteger)diameter {
    self = [super init];

    if (self) {
        _name = @"Circle";
        _piNumber = 3.14159;
        self.diameter = diameter;
    }

    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Fugure: %@    | Diameter: %d | Perimeter: %.2f", _name, self.diameter, [self calculatingPerimeter]];
}

@end
