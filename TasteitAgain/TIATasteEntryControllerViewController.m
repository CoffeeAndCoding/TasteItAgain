//
//  TIATasteEntryControllerViewController.m
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 11/3/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import "TIATasteEntryControllerViewController.h"
#import "TIATasteNoteSelector.h"

@interface TIATasteEntryControllerViewController ()

@end

@implementation TIATasteEntryControllerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)descriptorPage:(id)sender {

    TIATasteNoteSelector *descriptorPage = [[TIATasteNoteSelector alloc] init];
    
        [self.navigationController pushViewController:descriptorPage animated:YES];
}
@end
