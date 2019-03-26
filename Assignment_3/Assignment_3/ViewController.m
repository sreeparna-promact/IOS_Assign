//
//  ViewController.m
//  Assignment_3
//
//  Created by Sreeparna on 3/23/19.
//  Copyright © 2019 Sreeparna. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _arrimg=[[NSMutableArray alloc]initWithObjects:@"Instagram.png", @"Instagram.png",@"Instagram.png",@"Instagram.png",@"Instagram.png",@"Instagram.png",@"Instagram.png",
             @"Instagram.png",
             @"Instagram.png",@"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             @"Instagram.png",@"Instagram.png",
             nil];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _arrimg.count;

}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImageView *image1=(UIImageView *)[cell viewWithTag:1];
    image1.image=[UIImage imageNamed:[_arrimg objectAtIndex:indexPath.row]];
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
