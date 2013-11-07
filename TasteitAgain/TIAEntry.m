//
//  TIAEntry.m
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import "TIAEntry.h"


@implementation TIAEntry

@dynamic name;
@dynamic origin;
@dynamic roastedBy;
@dynamic processed;
@dynamic dateCreated;
@dynamic orderingValue;
@dynamic preparedBy;
@dynamic brew;
@dynamic traitOne;
@dynamic traitTwo;
@dynamic traitThree;
@dynamic traitFour;
@dynamic traitFive;
@dynamic traitSix;
@dynamic traitSeven;
@dynamic body;
@dynamic finish;
@dynamic sweet;
@dynamic acidity;
@dynamic notes;

- (void)awakeFromInsert
{
    [super awakeFromInsert];
    NSTimeInterval t = [[NSDate date] timeIntervalSinceReferenceDate];
    [self setDateCreated:t];
}

@end
