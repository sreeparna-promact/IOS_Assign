//
//  secondViewController.m
//  Assignment_2
//
//  Created by Sreeparna on 3/25/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import "secondViewController.h"
#import "ViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)signin:(id)sender {
       [self.navigationController popViewControllerAnimated:YES];}

- (IBAction)Male:(id)sender {
    
    
        self.Male.selected = !self.Male.isSelected;
        
        if (self.Male.isSelected)
        {
            self.Female.selected = NO;
        }
        else{
            self.Male.selected = YES;
        }
    }
    


- (IBAction)Female:(id)sender {
    self.Female.selected = !self.Female.isSelected;
    
    if (self.Female.isSelected)
    {
        self.Male.selected = NO;
    }
    else{
        self.Female.selected = YES;
    }
}

@end
