//
//  ViewController.h
//  Assignment_4
//
//  Created by Sreeparna on 3/23/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import <UIKit/UIKit.h>
int operation;
double display_number;
double result_number;
BOOL is_Decimal;

@interface ViewController : UIViewController{
 IBOutlet UILabel *result;

    
}

-(void)displayResult:(int)theNumber;

-(void)operationWithNumber:(int)theNumber;
- (IBAction)Clear:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)div:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;

- (IBAction)six:(id)sender;
- (IBAction)mul:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)dot:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)plus:(id)sender;



@end

