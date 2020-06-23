//
//  CJHEntryDetailViewController.h
//  Jounal-C
//
//  Created by Connor Holland on 6/22/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CJHEntry;

NS_ASSUME_NONNULL_BEGIN

@interface CJHEntryDetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleNameTextField;

@property (weak, nonatomic) IBOutlet UITextView *entryTextView;

@property (nonatomic, strong) CJHEntry *entry;

@end

NS_ASSUME_NONNULL_END
