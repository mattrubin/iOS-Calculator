//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Matt Rubin on 6/28/11.
//  Copyright 2011 Matt Rubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {
	IBOutlet UILabel *display;
	CalculatorBrain *brain;
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;

@end
