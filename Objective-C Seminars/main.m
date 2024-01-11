//
//  main.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 28.12.2023.
//

#import <Foundation/Foundation.h>
#import "Robot.h"


int main(int argc, const char *argv[]) {
    @autoreleasepool {
        typedef NSString* (^Moving) (NSString*);
        
        Moving moveUp = ^NSString* (NSString* turn){
            return @"up";
        };
        Moving moveDown = ^NSString* (NSString* turn){
            return @"down";
        };
        Moving moveLeft = ^NSString* (NSString* turn){
            return @"left";
        };
        Moving moveRight = ^NSString* (NSString* turn){
            return @"right";
        };
        
        
        
        Robot *robot = [[Robot alloc]initWithName:@"Genry"];
        
        [robot run:moveUp];
        [robot run:moveUp];
        [robot run:moveUp];
        [robot run:moveLeft];
        [robot run:moveLeft];
        [robot run:moveDown];
        [robot run:moveRight];
    }
    return 0;
}

