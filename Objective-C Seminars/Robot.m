//
//  Robot.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 12.01.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self){
        _name = name;
        self.coordX = 0;
        self.coordY = 0;
    }
    return self;
}

- (void)run:(NSString* (^)(NSString*))block {
    
    NSString *move = block(@"");
    NSString *message = [NSString stringWithFormat:@"Robot %@ move %@! Current coords: x:%d y:%d", self.name, move.description, (int)self.coordX, (int)self.coordY];
    
    if([move isEqualToString:@"up"]){
        self.coordY ++;
        NSLog(@"%@", message);
    }
    else if ([move isEqualToString:@"down"]){
        self.coordY --;
        NSLog(@"%@", message);
    }
    else if ([move isEqualToString:@"left"]){
        self.coordX --;
        NSLog(@"%@", message);
    }
    else if ([move isEqualToString:@"right"]){
        self.coordX ++;
        NSLog(@"%@", message);
    }
    else{
        NSLog(@"Command denied! Return Command!");
    }
}

@end
