//
//  FACalculationViewController.m
//  Financial Algebra
//
//  Created by Alsey Coleman Miller on 9/10/13.
//  Copyright (c) 2013 ColemanCDA. All rights reserved.
//

#import "FACalculationViewController.h"
#import "FAResultViewController.h"

@interface FACalculationViewController ()

@end

@implementation FACalculationViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue
                sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"pushResultsVC"]) {
        
        FAResultViewController *resultVC = segue.destinationViewController;
        
        resultVC.resultString = self.resultString;
    }
}

-(void)showInvalidInputAlert
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Invalid values",
                                                                                 @"Invalid values")
                                                        message:NSLocalizedString(@"Type a valid value", @"Type a valid value")
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedString(@"OK", @"OK")
                                              otherButtonTitles:nil];
    [alertView show];
}

-(void)calculate:(id)sender
{
    [self validateInput];
    
    [self performSegueWithIdentifier:@"pushResultsVC"
                              sender:self];
}

-(BOOL)validateInput
{
    return YES;
}

@end
