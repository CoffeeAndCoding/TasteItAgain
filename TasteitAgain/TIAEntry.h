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

@end
