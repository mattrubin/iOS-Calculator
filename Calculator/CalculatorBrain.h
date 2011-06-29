//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Matt Rubin on 6/28/11.
//  Copyright 2011 Matt Rubin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
	double operand;
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
