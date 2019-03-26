//
//  TableViewCell.h
//  Assignment5
//
//  Created by Sreeparna on 3/23/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import <UIKit/UIKit.h>
#

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *image;

@property (strong, nonatomic) IBOutlet UILabel *countryName;
@property (strong, nonatomic) IBOutlet UILabel *phoneCodeLabel;
@property (strong, nonatomic) IBOutlet UILabel *phoneCode;
@property (strong, nonatomic) IBOutlet UILabel *countryCode;

@property (strong, nonatomic) IBOutlet UILabel *currency;

@end
