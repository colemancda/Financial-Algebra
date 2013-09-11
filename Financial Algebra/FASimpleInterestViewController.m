//
//  FASimpleInterestViewController.m
//  Financial Algebra
//
//  Created by Alsey Coleman Miller on 9/10/13.
//  Copyright (c) 2013 ColemanCDA. All rights reserved.
//

#import "FASimpleInterestViewController.h"

@interface FASimpleInterestViewController ()

@end

@implementation FASimpleInterestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)resultString
{
    float principal = principalField.text.floatValue;
    
    float rate = rateField.text.floatValue / 100;
    
    float time = yearsField.text.floatValue;
    
    float interest = principal * rate * time;
    
    NSString *resultString = [NSString stringWithFormat:@"%f x %f x %f = %f", principal, rate, time, interest];
    
    return resultString;
}

@end
