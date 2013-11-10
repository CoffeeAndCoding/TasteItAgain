//
//  TIATasteNoteSelector.m
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 11/5/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import "TIATasteNoteSelector.h"
#import "TIATasteEntryControllerViewController.h"
#import "TIAEntry.h"

@interface TIATasteNoteSelector ()


@end

@implementation TIATasteNoteSelector

@synthesize descriptorArray;
@synthesize entry;



- (id)initWithNbibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)descriptorPressed:(id)sender {
    
    if (!descriptorArray) {
        
    
    descriptorArray = [[NSMutableArray alloc ] init];
    
    }
    UIButton *buttonPressed = sender;
    NSString *buttonPressedTitle = buttonPressed.titleLabel.text;
    
    if ([descriptorArray count] < 8 ){
    [descriptorArray addObject:buttonPressedTitle];
        
    
    
    
    NSLog(@"%@", buttonPressedTitle);
    
        //Also need a way to highlight/demonstrate that button has been selected.
    }
    
    
}
//Error fixed but still not saving info

- (void)viewWillDisappear:(BOOL)animated
{
    if ([descriptorArray count] > 0) {
    [entry setTraitOne:[descriptorArray objectAtIndex:0]];
    }
    if ([descriptorArray count] > 1 ){

    [entry setTraitTwo:[descriptorArray objectAtIndex:1]];
    }
    
    if ([descriptorArray count] > 2) {
        [entry setTraitThree:[descriptorArray objectAtIndex:2]];
    }
    
    if ([descriptorArray count] > 3) {

    [entry setTraitFour:[descriptorArray objectAtIndex:3]];
    }
    if ([descriptorArray count] > 4) {

    [entry setTraitFive:[descriptorArray objectAtIndex:4]];
    }
    if ([descriptorArray count] > 5) {

    [entry setTraitSix:[descriptorArray objectAtIndex:5]];
    }
    if ([descriptorArray count] > 6) {

    [entry setTraitSeven:[descriptorArray objectAtIndex:6]];
    }

    
    }
    


- (void)viewDidDisappear:(BOOL)animated
{
    for (NSString *i in descriptorArray) {
        NSLog(@"%@", i);}
    NSLog(@"%@ is set to trait one", entry.traitOne);
}
@end
