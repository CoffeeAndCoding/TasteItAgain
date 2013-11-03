//
//  TIAViewController.h
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TIAViewController : UIViewController
<UINavigationBarDelegate, UITextFieldDelegate>

- (IBAction)newEntry:(id)sender;

@property (strong, nonatomic) IBOutlet UIImageView *Logo;
@end
