//
//  EntryViewController.h
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TIAEntry.h"
#import "TIAEntryStore.h"

@interface EntryViewController : UIViewController <UINavigationControllerDelegate, UITextFieldDelegate>
{
    
    __weak IBOutlet UITextField *nameField;
   
    __weak IBOutlet UITextField *originField;
    __weak IBOutlet UITextField *roastedByField;
    __weak IBOutlet UITextField *processedField;
    
    __weak IBOutlet UITextField *preparedByField;
    
    __weak IBOutlet UITextField *brewField;
   }



@property (nonatomic, strong) TIAEntry *entry;

- (id) initForNewEntry:(BOOL)isNew;

- (IBAction)backgroundTapped:(id)sender;



@end