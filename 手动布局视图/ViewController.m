//
//  ViewController.m
//  手动布局视图
//
//  Created by zh dk on 2017/8/23.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SuperView *superView = [[SuperView alloc] init];
    superView.frame = CGRectMake(20, 20, 200, 300);
    superView.backgroundColor = [UIColor blueColor];
    [superView createSubViews];
    
    [self.view addSubview:superView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(240, 480, 80, 40);
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(240, 520, 80, 40);
    [btn02 setTitle:@"缩小" forState:UIControlStateNormal];
    [btn02 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn02];
    superView.tag = 101;
    
   
}
//放大父视图
-(void) pressLarge{
    SuperView *superView = (SuperView*)[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    superView.frame = CGRectMake(20, 20, 300, 400);
    [UIView commitAnimations];
}

//缩小父视图
-(void) pressSmall{
    SuperView *superView = (SuperView*)[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    superView.frame = CGRectMake(20, 20, 200, 300);
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
