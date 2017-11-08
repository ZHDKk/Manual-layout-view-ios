//
//  SuperView.m
//  手动布局视图
//
//  Created by zh dk on 2017/8/23.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

-(void) createSubViews
{
    view01 = [[UIView alloc] init];
    view01.backgroundColor = [UIColor orangeColor];
    view01.frame = CGRectMake(0, 0, 40, 40);
    
    view02 = [[UIView alloc] init];
    view02.backgroundColor = [UIColor orangeColor];
    view02.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    
    view03 = [[UIView alloc] init];
    view03.backgroundColor = [UIColor orangeColor];
    view03.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    
    view04 = [[UIView alloc] init];
    view04.backgroundColor = [UIColor orangeColor];
    view04.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    
    view05 = [[UIView alloc] init];
    view05.backgroundColor = [UIColor orangeColor];
    view05.frame = CGRectMake(0, (self.bounds.size.height - 40)/2, self.bounds.size.width, 40);
    
    [self addSubview:view01];
    [self addSubview:view02];
    [self addSubview:view03];
    [self addSubview:view04];
    [self addSubview:view05];
}

//当需要重新布局时调用此函数；通过此函数重新设定子视图的位置
-(void) layoutSubviews
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    view01.frame = CGRectMake(0, 0, 40, 40);
      view02.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    view03.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    view04.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    view05.frame = CGRectMake(0, (self.bounds.size.height - 40)/2, self.bounds.size.width, 40);
    [UIView commitAnimations];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
