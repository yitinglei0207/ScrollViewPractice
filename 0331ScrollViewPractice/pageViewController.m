//
//  pageViewController.m
//  0331ScrollViewPractice
//
//  Created by Jason Lei on 2015/3/31.
//  Copyright (c) 2015年 AlphaCamp. All rights reserved.
//

#import "pageViewController.h"

@interface pageViewController ()

@end

@implementation pageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    array = [[NSMutableArray alloc]initWithObjects:@"000085160012.jpg",@"000085160018.jpg",@"000085160021.jpg", nil];
    self.pageCtrl.numberOfPages = [array count];
    [self showImage];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showImage
{
    NSString *filename = [array objectAtIndex:self.pageCtrl.currentPage];
    self.myImg.image = [UIImage imageNamed:filename];
    
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender
{
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            if (self.pageCtrl.currentPage < [array count]) {
                self.pageCtrl.currentPage++;
                [self showImage];
            }
            break;
        case UISwipeGestureRecognizerDirectionRight:
        {
            if (self.pageCtrl.currentPage > 0) {
                self.pageCtrl.currentPage--;
                [self showImage];
            }
            break;
        }
        default:
            break;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
