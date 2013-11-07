//
//  TIATasteNoteSelector.h
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 11/5/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TIAEntry;

@interface TIATasteNoteSelector : UIViewController
- (IBAction)descriptorPressed:(id)sender;

@property (nonatomic, strong)NSMutableArray *descriptorArray;
@property (nonatomic, strong) TIAEntry *entry;




@end
