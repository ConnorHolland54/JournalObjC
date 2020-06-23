//
//  CJHEntry.m
//  Jounal-C
//
//  Created by Connor Holland on 6/22/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

#import "CJHEntry.h"

@implementation CJHEntry

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
        _timestamp = [NSDate date];
    }
    return self;
}

@end
