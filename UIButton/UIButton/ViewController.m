//
//  ViewController.m
//  UIButton
//
//  Created by qingyun on 16/3/21.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//- (IBAction)move:(UIButton *)sender {
//    [UIView animateWithDuration:0.33 animations:^{
////    [UIView beginAnimations:nil context:nil];
////    [UIView setAnimationDuration:.5];
//        switch (sender.tag) {
//            case 1:
//                _button.transform = CGAffineTransformTranslate(_button.transform, 0, -90);
//                break;
//            case 2:
//                _button.transform = CGAffineTransformTranslate(_button.transform, -90, 0);
//                break;
//            case 3:
//                _button.transform = CGAffineTransformTranslate(_button.transform, 0, 90);
//                break;
//            case 4:
//                _button.transform = CGAffineTransformTranslate(_button.transform, 90, 0);
//                break;
//                
//            default:
//                break;
//        }
////    [UIView commitAnimations];
//    
//    }];
//}

- (IBAction)move:(UIButton *)sender {
    
    CGPoint tempCenter = _button.center;
    switch (sender.tag) {
        case 1://向上
            tempCenter.y -= 90;
            break;
        case 2://向左
            tempCenter.x -= 90;
            break;
        case 3://向下
            tempCenter.y += 90;
            break;
        case 4://向右
            tempCenter.x += 90;
            break;
            
        default:
            break;
    }
    //头尾式动画
    [UIView beginAnimations:nil context:nil];
    //设置动画的时间
    [UIView setAnimationDuration:.5];
    //执行动画的代码
    _button.center = tempCenter;
}

- (IBAction)scale:(UIButton *)sender {
    [UIView animateWithDuration:0.33 animations:^{
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:.5];
        switch (sender.tag) {
            case 5:
                _button.transform = CGAffineTransformScale(_button.transform, -1.3, 1.3);
                break;
            case 6:
                _button.transform = CGAffineTransformScale(_button.transform, 0.7, -0.7);
                break;
                
            default:
                break;
        }
//    [UIView commitAnimations];
    }];
}

- (IBAction)rotate:(UIButton *)sender {
    [UIView animateWithDuration:0.33 animations:^{
//        [UIView beginAnimations:nil context:nil];
//        [UIView setAnimationDuration:.5];
        switch (sender.tag) {
            case 7:
                _button.transform = CGAffineTransformRotate(_button.transform, -M_PI_2);
                break;
            case 8:
                _button.transform = CGAffineTransformRotate(_button.transform,M_PI_2);
                break;
                
            default:
                break;
        }
//    [UIView commitAnimations];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
