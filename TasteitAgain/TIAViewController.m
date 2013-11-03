//
//  TIAViewController.m
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import "TIAViewController.h"
#import "TIAEntry.h"
#import "TIAEntryStore.h"
#import "EntryViewController.h"

@interface TIAViewController ()

@end

@implementation TIAViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UIImage *logoImage = [UIImage imageNamed:@"coffeeminilogo.png"];
        _Logo.image = logoImage;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newEntry:(id)sender {
    //Create a new Entry
    TIAEntry *newEntry = [[TIAEntryStore defaultStore] createEntry];
    
    EntryViewController *entryViewController = [[EntryViewController alloc] initForNewEntry:YES];
    
    [entryViewController setEntry:newEntry];
    
  //  [entryViewcontroller setDismissBlock:^{
 //       [[self tableView] reloadData];
//    }];

    
    UINavigationController *navController = [[UINavigationController alloc]
                                             initWithRootViewController:entryViewController];
    self.navigationController.navigationBar.translucent = NO;
    
    [self presentViewController:navController animated:YES completion:nil];

    
}
@end
