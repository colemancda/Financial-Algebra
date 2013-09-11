//
//  FASimpleInterestViewController.h
//  Financial Algebra
//
//  Created by Alsey Coleman Miller on 9/10/13.
//  Copyright (c) 2013 ColemanCDA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FACalculationViewController.h"

@interface FASimpleInterestViewController : FACalculationViewController
{
    
    IBOutlet UITextField *yearsField;
    
    IBOutlet UITextField *rateField;
    
    IBOutlet UITextField *principalField;
    
}



@end
