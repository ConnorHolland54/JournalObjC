//
//  CJHEntryController.h
//  Jounal-C
//
//  Created by Connor Holland on 6/22/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CJHEntry;

NS_ASSUME_NONNULL_BEGIN

@interface CJHEntryController : NSObject

+ (CJHEntryController *) shared;

@property (nonatomic, strong)NSMutableArray<CJHEntry *> *entries;

- (void)addEntry:(NSString *)title text:(NSString *)text;

- (void)removeEntry:(CJHEntry *)entry;

- (void)updateEntry:(CJHEntry *)entry text:(NSString *)text title:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
