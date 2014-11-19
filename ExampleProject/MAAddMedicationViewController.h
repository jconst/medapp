//
//  MAAddMedicationViewController.h
//  ExampleProject
//
//  Created by Joseph Constantakis on 11/19/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAAddMedicationViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *nameField;
@property (nonatomic, strong) IBOutlet UITextField *dosageField;

- (IBAction)didTapAdd;

@end
