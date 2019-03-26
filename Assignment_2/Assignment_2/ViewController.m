//
//  ViewController.m
//  Assignment_2
//
//  Created by Sreeparna on 3/25/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (IBAction)signup:(id)sender {

    secondViewController *myNewVC = (secondViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self.navigationController pushViewController:myNewVC animated:YES];
}
@end
