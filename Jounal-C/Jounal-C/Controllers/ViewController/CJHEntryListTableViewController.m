//
//  CJHEntryListTableViewController.m
//  Jounal-C
//
//  Created by Connor Holland on 6/22/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

#import "CJHEntryListTableViewController.h"
#import "CJHEntryController.h"
#import "CJHEntryDetailViewController.h"
#import "CJHEntry.h"

@interface CJHEntryListTableViewController ()

@end

@implementation CJHEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return CJHEntryController.shared.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    CJHEntry *entry = CJHEntryController.shared.entries[indexPath.row];
    cell.textLabel.text = [entry title];
    
    // let formatter = DateFormatter()
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyy-MM-dd";
    NSString *dateString = [dateFormatter stringFromDate:entry.timestamp];
    
    cell.detailTextLabel.text = dateString;
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        CJHEntry *entryToDelete = CJHEntryController.shared.entries[indexPath.row];
        [CJHEntryController.shared removeEntry:entryToDelete];
        
        
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {

        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        CJHEntry *entry = [CJHEntryController shared].entries[indexPath.row];

        CJHEntryDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.entry = entry;
    }
}


@end
