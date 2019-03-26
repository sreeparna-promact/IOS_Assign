//
//  ViewController.m
//  Assignment_4
//
//  Created by Sreeparna on 3/23/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    is_Decimal = false;
    result_number = 0;
    
    
    result.adjustsFontSizeToFitWidth = TRUE;
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
 
}
-(void)displayResult:(int)theNumber{
    
    if(!is_Decimal){
        display_number *= 10;
        
        
        display_number += theNumber;
        
        
        
        result.text = [NSString stringWithFormat:@"%.0f",display_number];
        
    }
    else{
        result.text = [result.text stringByAppendingString:[NSString stringWithFormat:@"%d", theNumber]];
    }
    display_number = [result.text floatValue];
}

-(void)operationWithNumber:(int)theNumber{
    
    is_Decimal = false;
    
    if(result_number == 0){
        result_number = display_number;
    }
    
    else{
        result.text = [NSString stringWithFormat:@"%.2f",result_number];
        switch (operation) {
            case 1:
                result_number += display_number;
                break;
            case 2:
                result_number -= display_number;
                break;
            case 3:
                result_number = display_number*result_number;
                break;
            case 4:
                result_number /= display_number;
                break;
                
            default:
                break;
        }
    }
    operation = theNumber;
    display_number = 0;
    
}
- (IBAction)Clear:(id)sender {
    operation = 0;
    result_number = 0;
    display_number = 0;
    is_Decimal = false;
    result.text = [NSString stringWithFormat:@"%i",0];
    
}



- (IBAction)div:(id)sender {
    if(result_number != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",result_number];
        display_number = [result.text floatValue];
        result_number = 0;
    }
    [self operationWithNumber:4];
    
    
}
- (IBAction)seven:(id)sender {
    [self displayResult:7];
}
- (IBAction)eight:(id)sender {
    [self displayResult:8];
    
}
- (IBAction)nine:(id)sender {
    [self displayResult:9];
    
}
- (IBAction)mul:(id)sender {
    if(result_number != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",result_number];
        display_number = [result.text floatValue];
        result_number = 0;
    }
    [self operationWithNumber:3];
}
- (IBAction)six:(id)sender {
    [self displayResult:6];
}
- (IBAction)five:(id)sender {
    [self displayResult:5];
}
- (IBAction)four:(id)sender {
    [self displayResult:4];
}
- (IBAction)plus:(id)sender {
    if(result_number != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",result_number];
        display_number = [result.text floatValue];
        result_number = 0;
    }
    [self operationWithNumber:1];
    
}
- (IBAction)three:(id)sender {
    [self displayResult:3];
}
- (IBAction)two:(id)sender {
    [self displayResult:2];
}
- (IBAction)one:(id)sender {
    [self displayResult:1];
}
- (IBAction)minus:(id)sender {
    if(result_number != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",result_number];
        display_number = [result.text floatValue];
        result_number = 0;
        
    }
    [self operationWithNumber:2];
    
}
- (IBAction)zero:(id)sender {
    [self displayResult:0];
}
- (IBAction)dot:(id)sender {
    is_Decimal = true;
    NSRange range = [result.text rangeOfString:@"."];
    if (range.location ==NSNotFound){
        result.text = [result.text stringByAppendingString:@"."];
    }
}
- (IBAction)equal:(id)sender {
    [self operationWithNumber:operation];
    result.text = [NSString stringWithFormat:@"%.2f",result_number];
    display_number = [result.text floatValue];
    result_number = 0;
    
}

@end
