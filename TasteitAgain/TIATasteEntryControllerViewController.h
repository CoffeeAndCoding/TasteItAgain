//
//  TIATasteEntryControllerViewController.h
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 11/3/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TIATasteEntryControllerViewController : UIViewController

- (IBAction)descriptorPage:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *descriptorOne;

@property (weak, nonatomic) IBOutlet UILabel *descriptorTwo;

@property (weak, nonatomic) IBOutlet UILabel *descriptorThree;
@property (weak, nonatomic) IBOutlet UILabel *descriptorFour;
@property (weak, nonatomic) IBOutlet UILabel *descriptorFive;
@property (weak, nonatomic) IBOutlet UILabel *descriptorSix;

@property (weak, nonatomic) IBOutlet UILabel *descriptorSeven;



@end
