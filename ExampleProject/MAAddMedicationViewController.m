//
//  MAAddMedicationViewController.m
//  ExampleProject
//
//  Created by Joseph Constantakis on 11/19/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAAddMedicationViewController.h"
#import "MAMedication.h"
#import "MAAppDelegate.h"
#import "MAUser.h"

@implementation MAAddMedicationViewController

- (IBAction)didTapAdd
{
    MAMedication *med = [MAMedication new];
    med.name = self.nameField.text;
    med.dosage = @([self.dosageField.text doubleValue]);
    APPDELEGATE.currentUser.medications = [APPDELEGATE.currentUser.medications arrayByAddingObject:med];
    [APPDELEGATE.currentUser saveMedications];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
