//
//  TIAEntry.h
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TIAEntry : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, strong) NSString * origin;
@property (nonatomic, strong) NSString * roastedBy;
@property (nonatomic, strong) NSString * processed;
@property (nonatomic) NSTimeInterval dateCreated;
@property (nonatomic) double orderingValue;
@property (nonatomic, strong) NSString * preparedBy;
@property (nonatomic, strong) NSString * brew;
@property (nonatomic, strong) NSString * traitOne;
@property (nonatomic, strong) NSString * traitTwo;
@property (nonatomic, strong) NSString * traitThree;
@property (nonatomic, strong) NSString * traitFour;
@property (nonatomic, strong) NSString * traitFive;
@property (nonatomic, strong) NSString * traitSix;
@property (nonatomic, strong) NSString * traitSeven;
@property (nonatomic) float body;
@property (nonatomic) float finish;
@property (nonatomic) float sweet;
@property (nonatomic) float acidity;
@property (nonatomic, strong) NSString *notes;




@end
