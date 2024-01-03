//
//  Rectangle.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 03.01.2024.
//

#import "Rectangle.h"

@implementation Rectangle


- (float)calculatingArea { 
    return self.height * self.weight;
}

- (float)calculatingPerimeter { 
    return 2 * (self.height + self.weight);
}

- (instancetype)initWithHeightAndWeight:(float)height weight:(float)weight {
    self = [super init];
    if (self){
        self.height = height;
        self.weight = weight;
        _name = @"Rectangle";
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Fugure: %@ | Area: %.2f | Perimeter: %.2f", _name, [self calculatingArea], [self calculatingPerimeter]];
}

@end
