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

- (void)performWaitingOperation
{
	if ([@"+" isEqual:waitingOperation])
	{
		operand = waitingOperand + operand;
	}
	else if ([@"*" isEqual:waitingOperation])
	{
		operand = waitingOperand * operand;
	}
	else if ([@"-" isEqual:waitingOperation])
	{
		operand = waitingOperand - operand;
	}
	else if ([@"/" isEqual:waitingOperation])
	{
		if (operand)
		{
			operand = waitingOperand / operand;
		}
		// TODO: Handle divide by zero.
	}
}


- (double)performOperation:(NSString *)operation
{
	if ([operation isEqual:@"sqrt"])
	{
		// TODO: What about negative operands?
		operand = sqrt(operand);
	}
	else if ([@"+/-" isEqual:operation])
	{
		operand = -operand;
	}
	else
	{
		// TODO: ignore back-to-back 2-operand operations unless there is a setOperand: call made in-between.
		[self performWaitingOperation];
		waitingOperation = operation;
		waitingOperand = operand;
	}
	return operand;
}

@end
