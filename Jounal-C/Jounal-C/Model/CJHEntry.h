//
//  CJHEntry.h
//  Jounal-C
//
//  Created by Connor Holland on 6/22/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CJHEntry : NSObject

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *text;
@property (nonatomic, copy, readwrite) NSDate *timestamp;

- (instancetype) initWithTitle:(NSString *)title text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
