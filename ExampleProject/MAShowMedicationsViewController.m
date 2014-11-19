//
//  MAShowMedicationsViewController.m
//  ExampleProject
//
//  Created by Joseph Constantakis on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAShowMedicationsViewController.h"
#import "MAAppDelegate.h"
#import "MAMedication.h"
#import "MAUser.h"
#import "MAEditMedicationViewController.h"

@implementation MAShowMedicationsViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return APPDELEGATE.currentUser.medications.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MedicationCell"
                                                            forIndexPath:indexPath];
    MAMedication *med = APPDELEGATE.currentUser.medications[indexPath.row];
    cell.textLabel.text = med.name;
    cell.detailTextLabel.text = [[med.dosage description] stringByAppendingString:@" mg"];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[MAEditMedicationViewController class]]) {
        MAEditMedicationViewController *editor = (MAEditMedicationViewController *)segue.destinationViewController;
        UITableViewCell *cell = sender;
        NSIndexPath *ip = [self.tableView indexPathForCell:cell];
        editor.currentMedication = APPDELEGATE.currentUser.medications[ip.row];
    }
}

@end
