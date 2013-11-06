//
//  EntryViewController.m
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import "EntryViewController.h"
#import "TIATasteEntryControllerViewController.h"

@interface EntryViewController ()

@end

@implementation EntryViewController

-(id)initForNewEntry:(BOOL)isNew
{
    self = [super initWithNibName:@"EntryViewController" bundle:nil];
    
    
    
    if (self) {
        if (isNew) {
            UIBarButtonItem *cancel = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                           target:self
                                       action:@selector(cancelEntry)];
            [[self navigationItem] setLeftBarButtonItem:cancel];
            
            UIBarButtonItem *cancelItem = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward
                                           target:self
                                           action:@selector(cancel:)];
            [[self navigationItem] setRightBarButtonItem:cancelItem];
            [[self navigationItem] setTitle:@"Info"];
        
    }
}
    return self;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    NSMutableArray *descriptorArray = [[NSMutableArray alloc ]init];
    
}

- (IBAction)backgroundTapped:(id)sender
{
    [[self view] endEditing:YES];
}

- (IBAction)flavorPage:(id)sender {
    TIATasteEntryControllerViewController *tasteEntry = [[TIATasteEntryControllerViewController alloc] init];
    
    
    [self.navigationController pushViewController:tasteEntry animated:YES];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cancelEntry
{
    [[self presentingViewController] dismissViewControllerAnimated:YES completion:nil];
}



@end
