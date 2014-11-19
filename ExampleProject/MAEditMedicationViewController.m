//
//  MAEditMedicationViewController.m
//  ExampleProject
//
//  Created by Joseph Constantakis on 11/19/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAEditMedicationViewController.h"
#import "MAAppDelegate.h"
#import "MAUser.h"

@implementation MAEditMedicationViewController

- (void)viewDidLoad
{
    self.nameField.text = self.currentMedication.name;
    self.dosageField.text = [self.currentMedication.dosage description];
}

- (IBAction)didTapSave
{
    self.currentMedication.name = self.nameField.text;
    self.currentMedication.dosage = @([self.dosageField.text doubleValue]);
    [APPDELEGATE.currentUser saveMedications];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
