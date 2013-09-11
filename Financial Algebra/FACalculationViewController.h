//
//  FACalculationViewController.h
//  Financial Algebra
//
//  Created by Alsey Coleman Miller on 9/10/13.
//  Copyright (c) 2013 ColemanCDA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FACalculationViewController : UIViewController

@property (readonly) NSString *resultString;

-(BOOL)validateInput;

-(void)modifyFloats;

-(void)showInvalidInputAlert;

-(IBAction)calculate:(id)sender;

@end
