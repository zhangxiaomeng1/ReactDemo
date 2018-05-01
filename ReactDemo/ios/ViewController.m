//
//  ViewController.m
//  RN
//
//  Created by zhangxiaomeng on 2018/4/30.
//  Copyright © 2018年 zhangxiaomeng. All rights reserved.
//

#import "ViewController.h"
#import "RNViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    RNViewController *VC = [[RNViewController alloc] init];
    [self presentViewController:VC animated:YES completion:^{
        
    }];
}


@end
