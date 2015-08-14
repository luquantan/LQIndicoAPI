//
//  LQNetworkManager.m
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import "LQNetworkManager.h"
#import "AFNetworking/AFNetworking.h"
#import "LQIndicoEndpoints.h"


@interface LQNetworkManager()

@property (nonatomic, strong) AFHTTPSessionManager *manager;

@end

@implementation LQNetworkManager

+ (instancetype)sharedManager {
    static LQNetworkManager *shared = nil;
    static dispatch_once_t singleToken;
    dispatch_once(&singleToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

- (instancetype)init {
    self = [super init];;
    if (self) {
        _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:kIndicoEndpointBaseURL]];
        _manager.requestSerializer = [AFJSONRequestSerializer serializer];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
        //Indico API response content-type is text/html
        [_manager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"text/html", nil]];
    }
    return self;
}

#pragma mark - Requests

- (void)textTagsWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion {
    [self.manager POST:[NSString stringWithFormat:@"%@key=%@", kIndicoTextTags, kIndicoEndpointAPIKey] parameters:@{@"data" : text} success:^(NSURLSessionDataTask *task, id responseObject) {
        if (completion) {
            completion(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (completion) {
            completion(nil, error);
        }
    }];
}

- (void)sentimentAnalysisWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion {
    [self.manager POST:[NSString stringWithFormat:@"%@key=%@", kIndicoSentiment, kIndicoEndpointAPIKey] parameters:@{@"data" : text} success:^(NSURLSessionDataTask *task, id responseObject) {
        if (completion) {
            completion(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (completion) {
            completion(nil, error);
        }
    }];
}

- (void)languageAnalysisWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion {
    [self.manager POST:[NSString stringWithFormat:@"%@key=%@", kIndicoLanguage, kIndicoEndpointAPIKey] parameters:@{@"data" : text} success:^(NSURLSessionDataTask *task, id responseObject) {
        if (completion) {
            completion(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (completion) {
            completion(nil, error);
        }
    }];
}

- (void)politicalAnalysisWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion {
    [self.manager POST:[NSString stringWithFormat:@"%@key=%@", kIndicoPolitical, kIndicoEndpointAPIKey] parameters:@{@"data" : text} success:^(NSURLSessionDataTask *task, id responseObject) {
        if (completion) {
            completion(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (completion) {
            completion(nil, error);
        }
    }];
}

- (void)facialEmotionRecognitionWithImage:(UIImage *)image completionHandler:(LQDictionaryCompletionBlock)completion {

}

- (void)imageFeaturesWithImage:(UIImage *)image completionHandler:(LQDictionaryCompletionBlock)completion {

}

- (void)facialFeaturesWithImage:(UIImage *)image completionHandler:(LQDictionaryCompletionBlock)completion {
    
}

@end
