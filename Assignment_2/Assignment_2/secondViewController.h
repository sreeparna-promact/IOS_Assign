//
//  secondViewController.h
//  Assignment_2
//
//  Created by Sreeparna on 3/25/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController
- (IBAction)signin:(id)sender;
- (IBAction)Male:(id)sender;
- (IBAction)Female:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *Male;

@property (strong, nonatomic) IBOutlet UIButton *Female;

@end
