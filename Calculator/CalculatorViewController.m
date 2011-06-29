//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Matt Rubin on 6/28/11.
//  Copyright 2011 Matt Rubin. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (CalculatorBrain *)brain
{
	if (!brain) brain = [[CalculatorBrain alloc] init];
	return brain;
}

- (IBAction)digitPressed:(UIButton *)sender
{
	NSString *digit = sender.titleLabel.text;
	if (userIsInTheMiddleOfTypingANumber)
	{
		display.text = [display.text stringByAppendingString:digit];
	}
	else
	{
		display.text = digit;
		userIsInTheMiddleOfTypingANumber = YES;
	}
}

- (IBAction)operationPressed:(UIButton *)sender
{
	if (userIsInTheMiddleOfTypingANumber) {
		[self.brain setOperand:[display.text doubleValue]];
		userIsInTheMiddleOfTypingANumber = NO;
	}
	NSString *operation = sender.titleLabel.text;
	double result = [self.brain performOperation:operation];
	display.text = [NSString stringWithFormat:@"%g", result];
}

@end
