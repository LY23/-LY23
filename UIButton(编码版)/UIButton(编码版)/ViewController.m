//
//  ViewController.m
//  UIButton(编码版)
//
//  Created by qingyun on 16/3/21.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
UIButton *btn;
- (void)viewDidLoad {
    [super viewDidLoad];
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(25, 25, 300, 300);
    [btn addTarget:self action:@selector(rotate:) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundImage:[UIImage imageNamed:@"dog1"] forState:UIControlStateNormal];
    [btn setTitle:@"一只柴犬" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"dog2"] forState:UIControlStateHighlighted];
    [btn setTitle:@"一只二哈" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    btn.tag = 1;
    
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bt1];
    bt1.frame = CGRectMake(25, 500, 48, 48);
    [bt1 setImage:[UIImage imageNamed:@"left_rotate_normal"] forState:UIControlStateNormal];
    [bt1 setImage:[UIImage imageNamed:@"left_rotate_highlighted"] forState:UIControlStateHighlighted];
    bt1.tag = 7;
    [bt1 addTarget:self action:@selector(rotate:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bt2];
    bt2.frame = CGRectMake(120, 500, 48, 48);
    [bt2 setImage:[UIImage imageNamed:@"right_rotate_normal"] forState:UIControlStateNormal];
    [bt2 setImage:[UIImage imageNamed:@"tight_rotate_highlighted"] forState:UIControlStateHighlighted];
    bt2.tag = 8;
    [bt2 addTarget:self action:@selector(rotate:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)rotate:(UIButton *)sender {
    for (int i =0; i<100; i++) {

    [UIView animateWithDuration:13 animations:^{
        switch (sender.tag) {
            case 7:
                btn.transform = CGAffineTransformRotate(btn.transform, -M_PI_2);
                break;
            case 8:
                btn.transform = CGAffineTransformRotate(btn.transform,M_PI_2);
                break;
                
            default:
                break;
        }
    }];
        
    }
        
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

@end
