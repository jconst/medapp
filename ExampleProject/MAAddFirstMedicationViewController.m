//
//  MAAddMedicationViewController.m
//  ExampleProject
//
//  Created by Joseph Constantakis on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAAddFirstMedicationViewController.h"
#import "MAAppDelegate.h"
#import "MAMedication.h"
#import "MAUser.h"

@interface MAAddFirstMedicationViewController ()

@property (nonatomic, strong) IBOutlet UITextField *nameField;

@end


@implementation MAAddFirstMedicationViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    MAMedication *newMed = [MAMedication new];
    newMed.name = self.nameField.text;
    newMed.dosage = @0;
    APPDELEGATE.currentUser.medications = [APPDELEGATE.currentUser.medications arrayByAddingObject:newMed];
    [APPDELEGATE.currentUser saveMedications];
}

@end
