//
//  main.m
//  Fraction
//
//  Created by Pat on 2/17/13.
//  Copyright (c) 2013 Pat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

- (void) print;
- (void) setNumerator:(int) n;
- (void) setDenominator:(int)d;
- (int) numerator;
- (int) denominator;
- (double) convertToNum;

@end

@implementation Fraction

- (void) print
{
    if (numerator % denominator == 0) {
        NSLog(@"%i", numerator/denominator);
    }
    else
        NSLog(@" %i/%i ", numerator, denominator);
}
- (void) setNumerator:(int) n
{
    numerator = n;
}
- (void) setDenominator:(int)d
{
    denominator = d;
}
- (int) numerator
{
    return numerator;
}
- (int) denominator
{
    return denominator;
}
- (double) convertToNum
{
    if (denominator !=0)
        return (double) numerator/denominator;
    else
        return 0.0;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        
        [aFraction setNumerator:1];
        [aFraction setDenominator:4];
        
        [bFraction setNumerator:5];
        [bFraction setDenominator:1];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g",[aFraction convertToNum]);
        
        [bFraction print];
        NSLog(@" =");
        NSLog(@"%g", [bFraction convertToNum]);
        
              
    }
    return 0;
}

