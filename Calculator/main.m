//
//  main.m
//  Calculator
//
//  Created by Matt Rubin on 6/28/11.
//  Copyright 2011 Matt Rubin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CalculatorAppDelegate.h"

int main(int argc, char *argv[])
{
	int retVal = 0;
	@autoreleasepool {
	    retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([CalculatorAppDelegate class]));
	}
	return retVal;
}
