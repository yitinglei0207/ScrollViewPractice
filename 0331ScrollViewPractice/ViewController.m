//
//  ViewController.m
//  0331ScrollViewPractice
//
//  Created by Jason Lei on 2015/3/31.
//  Copyright (c) 2015年 AlphaCamp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *img1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"000085160012.jpg"]];
    UIImageView *img2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"000085160018.jpg"]];
    UIImageView *img3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"000085160021.jpg"]];
    //img1.sizeToFit;
    
    img1.backgroundColor = [UIColor greenColor];
    
    img1.contentMode = UIViewContentModeScaleAspectFill;
    img2.contentMode = UIViewContentModeScaleAspectFit;
    img3.contentMode = UIViewContentModeScaleAspectFit;
    
    [img1 sizeToFit];
    CGRect rect = CGRectMake(0, 0, img1.frame.size.width/2, img1.frame.size.height/2);
    img1.frame = rect;
    img2.frame = CGRectOffset(img1.frame, 0, img1.frame.size.height);
    img3.frame = CGRectOffset(img2.frame, 0, img2.frame.size.height);
    
    CGSize size = CGSizeMake(img1.frame.size.width, img1.frame.size.height*3);
    self.myScroll.contentSize = size;
    
    [self.myScroll addSubview:img1];
    [self.myScroll addSubview:img2];
    [self.myScroll addSubview:img3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
