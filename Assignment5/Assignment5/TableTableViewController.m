//
//  TableTableViewController.m
//  Assignment5
//
//  Created by Sreeparna on 3/26/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import "TableTableViewController.h"
#import "TableViewCell.h"
@interface TableTableViewController ()



@end

@implementation TableTableViewController
NSString *path,*data_info;
NSArray *arr;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    path=[[NSBundle mainBundle]pathForResource:@"countrylist" ofType:@"json"];
    data_info=[[NSString alloc]initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
      arr=[NSJSONSerialization JSONObjectWithData:[data_info dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arr.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cCell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *dict=[arr objectAtIndex:indexPath.row];
    
    cCell.countryName.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"name"]];
    cCell.countryCode.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"countryCode"]];
    cCell.phoneCode.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"phoneCode"]];
    cCell.currency.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"currencyCode"]];
    
    
    return cCell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
