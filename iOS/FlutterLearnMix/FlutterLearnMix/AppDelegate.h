//
//  AppDelegate.h
//  FlutterLearnMix
//
//  Created by Himin on 2019/3/6.
//  Copyright © 2019 Himin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Flutter/Flutter.h>
@interface AppDelegate : FlutterAppDelegate <UIApplicationDelegate, FlutterAppLifeCycleProvider>

@property (nonatomic, strong) FlutterEngine *flutterEngine;

@end

//@interface AppDelegate : UIResponder <UIApplicationDelegate>
//
//@property (strong, nonatomic) UIWindow *window;
//
//@end

