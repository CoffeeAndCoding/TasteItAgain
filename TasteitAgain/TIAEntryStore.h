//
//  TIAEntryStore.h
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class TIAEntry;

@interface TIAEntryStore : NSObject
{
    NSMutableArray *allEntries;
    NSManagedObjectContext *context;
    NSManagedObjectModel *model;
}

+ (TIAEntryStore *)defaultStore;

- (TIAEntry *)createEntry;

- (NSString *)entriesArchivePath;

- (void)loadAllEntries;

- (NSArray *)allEntries;

- (BOOL)saveChanges;

@end
