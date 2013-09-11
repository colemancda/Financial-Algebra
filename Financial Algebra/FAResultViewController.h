//
//  FAResultViewController.h
//  Financial Algebra
//
//  Created by Alsey Coleman Miller on 9/10/13.
//  Copyright (c) 2013 ColemanCDA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FAResultViewController : UIViewController
{
    IBOutlet UITextView *_textView;
}

@property NSString *resultString;

- (IBAction)backButton:(id)sender;

- (IBAction)actionButton:(id)sender;

-(void)updateTextView;

@end
