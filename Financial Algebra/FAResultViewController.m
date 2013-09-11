//
//  FAResultViewController.m
//  Financial Algebra
//
//  Created by Alsey Coleman Miller on 9/10/13.
//  Copyright (c) 2013 ColemanCDA. All rights reserved.
//

#import "FAResultViewController.h"

@interface FAResultViewController ()

@end

@implementation FAResultViewController

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        // KVO
        [self addObserver:self
               forKeyPath:@"resultString"
                  options:NSKeyValueObservingOptionOld
                  context:nil];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self updateTextView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [self removeObserver:self
              forKeyPath:@"resultString"];
}

#pragma mark - KVO

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    // update text view
    if ([keyPath isEqualToString:@"resultString"]) {
        
        [self updateTextView];
    }
}

#pragma mark

-(void)updateTextView
{
    _textView.text = self.resultString;
}

#pragma mark - Buttons

- (IBAction)backButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

- (IBAction)actionButton:(id)sender {
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:@[self.resultString]
                                                                             applicationActivities:nil];
    
    [self presentViewController:activityVC
                       animated:YES
                     completion:nil];
}


@end
