//
//  TIATasteEntryControllerViewController.h
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 11/3/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TIAEntry;

@interface TIATasteEntryControllerViewController : UIViewController
{
   
    __weak IBOutlet UILabel *descriptorOne;
    
    __weak IBOutlet UILabel *descriptorTwo;

    __weak IBOutlet UILabel *descriptorThree;

    __weak IBOutlet UILabel *descriptorFour;
    
    __weak IBOutlet UILabel *descriptorFive;
    
    __weak IBOutlet UILabel *descriptorSix;
    
    __weak IBOutlet UILabel *descriptorSeven;
    
    
}

@property (nonatomic, strong)TIAEntry *entry;

- (IBAction)descriptorPage:(id)sender;



@end
