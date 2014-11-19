//
//  MAEditMedicationViewController.h
//  ExampleProject
//
//  Created by Joseph Constantakis on 11/19/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MAMedication.h"

@interface MAEditMedicationViewController : UIViewController

@property (nonatomic, strong) MAMedication *currentMedication;
@property (nonatomic, strong) IBOutlet UITextField *nameField;
@property (nonatomic, strong) IBOutlet UITextField *dosageField;

- (IBAction)didTapSave;

@end
