//
//  TIATasteNoteSelector.m
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 11/5/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import "TIATasteNoteSelector.h"
#import "TIATasteEntryControllerViewController.h"

@interface TIATasteNoteSelector ()


@end

@implementation TIATasteNoteSelector



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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)descriptorPressed:(id)sender {
    NSMutableArray *descriptorArray = [[NSMutableArray alloc ] init];
    
    UIButton *buttonPressed = sender;
    NSString *buttonPressedTitle = buttonPressed.titleLabel.text;
    
    if ([descriptorArray count] < 8 ){
    [descriptorArray addObject:buttonPressedTitle];
    
    
    NSLog(@"%@", buttonPressedTitle);
    
        //Also need a way to highlight/demonstrate that button has been selected.
    }
}
@end
