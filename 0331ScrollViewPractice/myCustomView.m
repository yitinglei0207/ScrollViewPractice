//
//  myCustomView.m
//  0331ScrollViewPractice
//
//  Created by Jason Lei on 2015/3/31.
//  Copyright (c) 2015年 AlphaCamp. All rights reserved.
//

#import "myCustomView.h"

@implementation myCustomView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    self.im1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"alpha-logo-long.png"]];
    self.im1.backgroundColor = [UIColor blackColor];
    //self.im1.contentMode = UIViewContentModeCenter;
    
    [_im1 sizeToFit];
    _im1.frame = CGRectMake(rect.origin.x, rect.origin.y, self.im1.frame.size.width/3, self.im1.frame.size.height/3);
    
    _lb1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 200, 200)];
    [_lb1 setBackgroundColor:[UIColor greenColor]];
    _lb1.font =  [UIFont fontWithName:@"HelveticaNeue" size:12];
    _lb1.textColor = [UIColor whiteColor];
    [_lb1 sizeToFit];
    _lb1.frame = CGRectMake(40, 200, 100, 40);
    _lb1.text = @"custom Label1";
    
    [self addSubview:_im1];
    [self addSubview:_lb1];

    // Drawing code
}




@end
