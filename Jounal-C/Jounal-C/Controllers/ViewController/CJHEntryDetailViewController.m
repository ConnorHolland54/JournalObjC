//
//  CJHEntryDetailViewController.m
//  Jounal-C
//
//  Created by Connor Holland on 6/22/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

#import "CJHEntryDetailViewController.h"
#import "CJHEntryController.h"
#import "CJHEntryListTableViewController.h"
#import "CJHEntry.h"

@interface CJHEntryDetailViewController ()

@end

@implementation CJHEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _entryTextView.delegate = self;
    [self updateViews];
}

- (void)updateViews
{
    if (!self.entry)
    {
    return;
    }
    _titleNameTextField.text = [_entry title];
    _entryTextView.text = [_entry text];
    //self.titleNameTextField.text;
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString * entryTitle = _titleNameTextField.text;
    NSString * bodyText = _entryTextView.text;
    
    
    
    if (_entry)
    {
        [CJHEntryController.shared updateEntry:_entry text:bodyText title:entryTitle];
    } else {
        [CJHEntryController.shared addEntry:entryTitle text:bodyText];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(id)sender {
}

- (void) updateViewWithEntry:(CJHEntry *)entry
{
    self.titleNameTextField.text = entry.title;
    self.entryTextView.text = entry.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return true;
}


@end
