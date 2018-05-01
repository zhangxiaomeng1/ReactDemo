//
//  RNViewController.m
//  RN
//
//  Created by zhangxiaomeng on 2018/4/30.
//  Copyright © 2018年 zhangxiaomeng. All rights reserved.
//

#import "RNViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>

@interface RNViewController ()

@end

@implementation RNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"RN Hybrid";
  
  NSURL *jsCodeLocation;
//  jsCodeLocation = [NSURL URLWithString:@"http://192.168.1.106:8081/index.ios.bundle"];
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"ReactDemo"
                                               initialProperties:nil
                                                   launchOptions:nil];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  
  
//    NSURL * jsCodeLocation;
//    NSString * strUrl = @"http://localhost:8081/index.ios.bundle?platform=ios&dev=true";
//    jsCodeLocation = [NSURL URLWithString:strUrl];
//    RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
//                                                         moduleName:@"RN"
//                                                  initialProperties:nil
//                                                      launchOptions:nil];
    rootView.frame = CGRectMake(100, 100, 200, 200);
    rootView.backgroundColor = [UIColor greenColor];

    [self.view addSubview:rootView];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}


@end
