//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Matt Rubin on 6/28/11.
//  Copyright 2011 Matt Rubin. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)setOperand:(double)aDouble
{
	operand = aDouble;
}

- (double)performOperation:(NSString *)operation
{
	if ([operation isEqual:@"sqrt"])
	{
		// TODO: What about negative operands?
		operand = sqrt(operand);
	}
	return operand;
}

@end
