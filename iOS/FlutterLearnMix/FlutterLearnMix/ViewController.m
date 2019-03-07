//
//  ViewController.m
//  FlutterLearnMix
//
//  Created by Himin on 2019/3/6.
//  Copyright © 2019 Himin. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    {
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 80, 100, 30)];
        btn.backgroundColor = UIColor.orangeColor;
        [btn setTitle:@"push" forState:UIControlStateNormal];
        [btn setTitleColor:UIColor.grayColor forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pushBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
    }
}

- (void)pushBtnClick {
    NSLog(@"push to flutter");
    //    UIViewController *vc = [[UIViewController alloc] init];
    //    vc.view.backgroundColor = UIColor.orangeColor;
    //    [self.navigationController pushViewController:vc animated:true];
    
    // 方法一 不需要 AppDelegate flutterEngine
//    FlutterViewController* flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
//    FlutterBasicMessageChannel* messageChannel = [FlutterBasicMessageChannel messageChannelWithName:@"channel"
//                                                                                    binaryMessenger:flutterViewController
//                                                                                              codec:[FlutterStandardMessageCodec sharedInstance]];//消息发送代码，本文不做解释
//    __weak __typeof(self) weakSelf = self;
//    [messageChannel setMessageHandler:^(id message, FlutterReply reply) {
//        // Any message on this channel pops the Flutter view.
//        [[weakSelf navigationController] popViewControllerAnimated:YES];
//        reply(@"");
//    }];
    
    // 方法二 需要 AppDelegate flutterEngine
    FlutterEngine *flutterEngine = [(AppDelegate *)[UIApplication sharedApplication].delegate flutterEngine];
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    flutterViewController.view.backgroundColor = UIColor.whiteColor;
    
    NSAssert([self navigationController], @"Must have a NaviationController");
    [[self navigationController]  pushViewController:flutterViewController animated:YES];
}

@end
