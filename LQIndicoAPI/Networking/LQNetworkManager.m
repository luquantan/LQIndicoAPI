//
//  LQNetworkManager.m
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import "LQNetworkManager.h"
#import "AFNetworking/AFNetworking.h"

@interface LQNetworkManager()

@property (nonatomic, strong) AFHTTPRequestOperationManager *manager;

@end

@implementation LQNetworkManager

- (AFHTTPRequestOperationManager *)manager {
    if (!_manager) {
        _manager = [AFHTTPRequestOperationManager manager];
    }
    return _manager;
}

#pragma mark - Requests



@end
