//
//  main.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 28.12.2023.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Rectangle.h"
#import "Triangle.h"
#import "AbstractFigure.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Circle *circle = [[Circle alloc]initWithDiameter:20];
        Rectangle *rectangle = [[Rectangle alloc]initWithHeightAndWeight:20 weight:10];
        Triangle *triangle = [[Triangle alloc]initWithRightLeftTurnsAndFoundation:15 leftTurn:10 foundation:15];
        
        NSMutableArray <id<AbstractFigure>> *array = [[NSMutableArray alloc]init];
        
        [array addObject:circle];
        [array addObject:rectangle];
        [array addObject:triangle];
        
        for (id<AbstractFigure> figure in array) {
            NSLog(@"%@", figure);
        }
    }
    return 0;
}

