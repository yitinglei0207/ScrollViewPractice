//
//  testCustomViewController.m
//  0331ScrollViewPractice
//
//  Created by Jason Lei on 2015/4/1.
//  Copyright (c) 2015年 AlphaCamp. All rights reserved.
//

#import "TestCustomViewController.h"
#import "MyCustomView.h"
@interface TestCustomViewController ()

@end

@implementation TestCustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGRect rect1 = CGRectMake(0, 80, 480 , 800);
    
    MyCustomView *custom = [[MyCustomView alloc] init];
    custom.frame = rect1;
    //[custom drawRect:rect1];
    
    [self.view addSubview:custom];
    
    
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

@end
