//
//  ViewController.m
//  Assignment5
//
//  Created by Sreeparna on 3/22/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path=[[NSBundle mainBundle]pathForResource:@"countrylst" ofType:@"json"];
    NSData *data=[NSData dataWithContentsOfFile:path];
    NSDictionary *Dictionary  = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
