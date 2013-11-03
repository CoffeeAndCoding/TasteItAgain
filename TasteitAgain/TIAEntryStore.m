//
//  TIAEntryStore.m
//  TasteitAgain
//
//  Created by TRAVIS SWANSON on 10/30/13.
//  Copyright (c) 2013 TRAVIS SWANSON. All rights reserved.
//

#import "TIAEntryStore.h"
#import "TIAEntry.h"


@implementation TIAEntryStore

+ (TIAEntryStore *)defaultStore
{
    static TIAEntryStore *defaultStore = nil;
    if (!defaultStore)
        defaultStore = [[super allocWithZone:nil] init];
    
    return defaultStore;
}

- (id)init
{
    self = [super init];
    if (self) {
        //Read TasteItAgain.xcdatamodeled
        model = [NSManagedObjectModel mergedModelFromBundles:nil];
        
        NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
        
        //Path of sqlite file
        NSString *path = [self entriesArchivePath];
        NSURL *storeURL = [NSURL fileURLWithPath:path];
        
        NSError *error = nil;
        
        if (![psc addPersistentStoreWithType:NSSQLiteStoreType
                               configuration:nil
                                         URL:storeURL
                                     options:nil
                                       error:&error]) {
            [NSException raise:@"Open failed"
                        format:@"Reason: %@", [error localizedDescription]];
        }
        //Create the maanaged object context
        context = [[NSManagedObjectContext alloc] init];
        context.persistentStoreCoordinator = psc;
        
        context.undoManager = nil;
        
        [self loadAllEntries];
        
    }
    return self;
}

- (void)loadAllEntries
{
    if (!allEntries) {
        NSFetchRequest *request = [[NSFetchRequest alloc] init];
        NSEntityDescription *e = [[model entitiesByName] objectForKey:@"TIAEntry"];
        request.entity = e;
        
        NSSortDescriptor *sd = [NSSortDescriptor sortDescriptorWithKey:@"orderingValue" ascending:YES];
        [request setSortDescriptors:[NSArray arrayWithObject:sd]];
        
        NSError *error;
        NSArray *result = [context executeFetchRequest:request error:&error];
        if (!result) {
            [NSException raise:@"Fetch failed" format:@"Reason: %@", [error localizedDescription]];
        }
        allEntries = [[NSMutableArray alloc] initWithArray:result];
    }
}

- (NSString *)entriesArchivePath
{
    NSArray *documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //Get one and only one document directory from that list
    NSString *documentDirectory = [documentDirectories objectAtIndex:0];
    
    return [documentDirectory stringByAppendingPathComponent:@"store.data"];
}

- (BOOL)saveChanges
{
    NSError *err = nil;
    BOOL successful = [context save:&err];
    if (!successful) {
        NSLog(@"Error saving: %@", [err localizedDescription]);
        
    }
    return successful;
}

- (NSArray *)allEntries
{
    return allEntries;
}

- (TIAEntry *)createEntry
{
    double order;
    if ([allEntries count] == 0) {
        order = 1.0;
    } else {
        order = [[allEntries lastObject] orderingValue] + 1.0;
    }
    NSLog(@"Adding after %d items, order = %.2f", [allEntries count], order);
    
    TIAEntry *t = [NSEntityDescription insertNewObjectForEntityForName:@"TIAEntry" inManagedObjectContext:context];
    
    [t setOrderingValue:order];
    
    [allEntries addObject:t];
    
    return t;
}
@end
