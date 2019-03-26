//
//  ViewController.m
//  Assignment1IOS
//
//  Created by Sreeparna on 3/15/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()





@end

@implementation ViewController
@synthesize textfeild,fin_text;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)button:(id)sender{
    NSString *text=textfeild.text;
    fin_text.text=text;
    
}



@end
