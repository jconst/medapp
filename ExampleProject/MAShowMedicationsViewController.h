//
//  MAShowMedicationsViewController.h
//  ExampleProject
//
//  Created by Joseph Constantakis on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAShowMedicationsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
