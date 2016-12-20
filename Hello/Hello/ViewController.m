//
//  ViewController.m
//  Hello
//
//  Created by 李松 on 2016/12/20.
//  Copyright © 2016年 李松. All rights reserved.
//

#import "ViewController.h"
#import "RCTRootView.h"
#import "CodePush.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pageOneClick:(id)sender {
    NSLog(@"High Score Button Pressed");
    NSURL *jsCodeLocation;
#ifdef DEBUG
    jsCodeLocation  = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
#else
    jsCodeLocation = [CodePush bundleURL];
#endif
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNHighScores"
                         initialProperties :
     @{
       @"scores" : @[
               @{
                   @"name" : @"Alex",
                   @"value": @"42"
                   },
               @{
                   @"name" : @"Joel",
                   @"value": @"10"
                   }
               ]
       }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)pageTwoClick:(id)sender {
    NSLog(@"22222");
    NSURL *jsCodeLocation;
#ifdef DEBUG
    jsCodeLocation  = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
#else
    jsCodeLocation = [CodePush bundleURL];
#endif
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNHighScores2"
                         initialProperties :
     @{
       @"scores" : @[
               @{
                   @"name" : @"Alex",
                   @"value": @"42"
                   },
               @{
                   @"name" : @"Joel",
                   @"value": @"10"
                   }
               ]
       }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];

}
- (IBAction)pageThreeClick:(id)sender {
    NSLog(@"33333");
    NSURL *jsCodeLocation;
#ifdef DEBUG
    jsCodeLocation  = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
#else
    jsCodeLocation = [CodePush bundleURL];
#endif
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNHighScores3"
                         initialProperties :
     @{
       @"scores" : @[
               @{
                   @"name" : @"Alex",
                   @"value": @"42"
                   },
               @{
                   @"name" : @"Joel",
                   @"value": @"10"
                   }
               ]
       }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
