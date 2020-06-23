//
//  CJHEntryController.m
//  Jounal-C
//
//  Created by Connor Holland on 6/22/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

#import "CJHEntryController.h"
#import "CJHEntry.h"


@implementation CJHEntryController

+ (CJHEntryController *)shared
{
    static CJHEntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    sharedInstance = [CJHEntryController new];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
       
    }
    return self;
}


- (void)addEntry:(NSString *)title text:(NSString *)text
{
    
    CJHEntry *newEntries = [[CJHEntry alloc] initWithTitle:title text:text];
    [_entries addObject:newEntries];
}

- (void)updateEntry:(CJHEntry *)entry text:(NSString *)text title:(NSString *)title
{
    entry.title = title;
    entry.text = text;
}

- (void)removeEntry:(CJHEntry *)entry
{
    [_entries removeObject:entry];
}

@end
