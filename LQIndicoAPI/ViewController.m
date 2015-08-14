//
//  ViewController.m
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import "ViewController.h"
#import "LQNetworkManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postTextTagPressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] textTagsWithText:@"afsdfa" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"IT worked");
            NSLog(@"%@",[result valueForKeyPath:@"results.anime"]);
        } else {
            NSLog(@"Something went wrong!");
        }
    }];
}

- (IBAction)sentimentPressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] sentimentAnalysisWithText:@"hahaha" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"sentimentgood");
        } else {
            NSLog(@"sentiment bad");
        }
    }];
}

- (IBAction)languagePressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] languageAnalysisWithText:@"apa bahasa ini" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"language good");
        } else {
            NSLog(@"language bad");
        }
    }];
}

- (IBAction)politicalPressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] politicalAnalysisWithText:@"i hate policy" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"political success");
        } else {
            NSLog(@"Political failure");
        }
    }];
}

@end
