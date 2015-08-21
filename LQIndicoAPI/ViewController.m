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
    [[LQNetworkManager sharedManager] setApiKey:@"56a69fcc2d30ad42bffee46159d3951e"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postTextTagPressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] textTagsAnalysis:@"What will the analysis yield on this one" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"Success");
        } else {
            NSLog(@"Failure");
        }
    }];
}

- (IBAction)sentimentPressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] sentimentAnalysis:@"What will the analysis yield on this one" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"Success");
        } else {
            NSLog(@"Failure");
        }
    }];
}

- (IBAction)languagePressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] languageAnalysis:@"He did not say siapa nama dia" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"Success");
        } else {
            NSLog(@"Failure");
        }
    }];
}

- (IBAction)politicalPressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] politicalAnalysis:@"i hate policy but love debate" completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"political success");
        } else {
            NSLog(@"Political failure");
        }
    }];
}

- (IBAction)facialEmotionPressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] facialEmotionRecognitionAnalysis:[UIImage imageNamed:@"face"] completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"Success");
        } else {
            NSLog(@"Error");
        }
    }];
}

- (IBAction)facialFeaturePressed:(UIButton *)sender {
    [[LQNetworkManager sharedManager] facialFeatureAnalysis:[UIImage imageNamed:@"face"] completionHandler:^(NSDictionary *result, NSError *error) {
        if (!error) {
            NSLog(@"Success");
        } else {
            NSLog(@"Failure");
        }
    }];
}

@end
