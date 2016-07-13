//
//  ViewController.m
//  CircleWaveAnimation
//
//  Created by apple on 12/7/16.
//  Copyright © 2016年 mark. All rights reserved.
//

#import "ViewController.h"
#import "UIViewAdditions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([self.electric intValue] > 100 || [self.electric intValue] < 0) {
        
        [self.navigationController popViewControllerAnimated:YES];
        
        return;
    }
    
    [self animation1];
    [self animation2];
  
}

- (void)animation1{


    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    basic.beginTime = 0;
    basic.toValue = @(M_PI);
    basic.duration = 1.0;
    basic.autoreverses = NO;
    basic.fillMode = kCAFillModeForwards;
    
    CABasicAnimation *basic1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    basic1.beginTime = basic.beginTime + basic.duration;
    basic1.fromValue = @(M_PI);
    basic1.toValue = @(M_PI *2);
    basic1.repeatCount = 4;
    basic1.duration = 1.0;
    basic1.autoreverses = NO;
    basic1.fillMode = kCAFillModeForwards;
    
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.duration = 2;
    group.repeatCount = 2;
    group.animations = @[basic,basic1];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    
    [self.rotationIMG.layer addAnimation:group forKey:nil];

    self.bgView.layer.cornerRadius = 115 /2.0;
    self.bgView.clipsToBounds = YES;


    UIImageView *waveImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wave"]];
    waveImageView.frame = CGRectMake(0, 0, 450, 300);
    waveImageView.alpha = 1;
    
    waveImageView.top = 115;
    waveImageView.left = -300;
    
    [self.bgView addSubview:waveImageView];

    
    self.electricLabel.text = [NSString stringWithFormat:@"%@%%",self.electric];
    [UIView animateWithDuration:4.0 animations:^{
        
        waveImageView.top = 115 - (([self.electric intValue]/100.0) * 115);
        if ([self.electric intValue] ==100) {
            waveImageView.top = -30;
        }
        waveImageView.left = 0;
        
    }];
    

}

- (void)animation2{


    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    basic.beginTime = 0;
    basic.toValue = @(M_PI);
    basic.duration = 1.0;
    basic.autoreverses = NO;
    basic.fillMode = kCAFillModeForwards;
    
    CABasicAnimation *basic1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    basic1.beginTime = basic.beginTime + basic.duration;
    basic1.fromValue = @(M_PI);
    basic1.toValue = @(M_PI *2);
    basic1.repeatCount = 4;
    basic1.duration = 1.0;
    basic1.autoreverses = NO;
    basic1.fillMode = kCAFillModeForwards;
    
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.duration = 2;
    group.repeatCount = 2;
    group.animations = @[basic,basic1];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    
    [self.rotatioonIMG1.layer addAnimation:group forKey:nil];
    
    self.bgView1.layer.cornerRadius = 115 /2.0;
    self.bgView1.clipsToBounds = YES;
    
    
    UIImageView *waveImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wave"]];
    waveImageView.frame = CGRectMake(0, 0, 450, 300);
    waveImageView.alpha = 1;
    
    waveImageView.top = 115;
    waveImageView.left = -300;
    
    [self.bgView1 addSubview:waveImageView];
    
    
    self.electricLabel1.text = [NSString stringWithFormat:@"%@%%",self.electric];
    
        [UIView animateWithDuration:1.0 animations:^{
            waveImageView.top = 0;
            waveImageView.left = -200;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:3.0 animations:^{
    
                waveImageView.top = 115 - (([self.electric intValue]/100.0) * 115);
                if ([self.electric intValue] ==100) {
                    waveImageView.top = -30;
                }
    
                waveImageView.left = 0;
            }];
        }];
    

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
