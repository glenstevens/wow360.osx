//
//  WoW360AppDelegate.h
//  WoW360
//
//  Created by Jason McLeod on 12-03-14.
//  Copyright 2012 Jason McLeod All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WoW360AppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSPersistentStoreCoordinator *__persistentStoreCoordinator;
    NSManagedObjectModel *__managedObjectModel;
    NSManagedObjectContext *__managedObjectContext;
}

@property (assign) IBOutlet NSWindow *window;

@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
