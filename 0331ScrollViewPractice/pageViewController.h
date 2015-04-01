//
//  pageViewController.h
//  0331ScrollViewPractice
//
//  Created by Jason Lei on 2015/3/31.
//  Copyright (c) 2015年 AlphaCamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pageViewController : UIViewController
{
    NSMutableArray *array;
}

@property(weak, nonatomic) IBOutlet UIImageView *myImg;
@property(weak, nonatomic) IBOutlet UIPageControl *pageCtrl;

- (void) showImage;

@end
