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
#import "UIImage+LQ.h"

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

//---------------------------------------------------------------------------------------------------------------
// Text Analysis
//---------------------------------------------------------------------------------------------------------------

- (void)sentimentAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints sentimentEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)highQualitySentimentAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints sentimentHQEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];

}

- (void)textTagsAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints textTagsEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)languageAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints languageEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)politicalAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints politicalEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];

}

- (void)keywordsAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints keywordEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)namedEntitiesAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints namedEntitiesEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)twitterEnagagementAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion {
    NSDictionary *data = @{@"data" : [texts firstObject]};
    [self.manager POST:[LQIndicoEndpoints twitterEngagementEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

//---------------------------------------------------------------------------------------------------------------
// Image Analysis
//---------------------------------------------------------------------------------------------------------------

- (void)facialEmotionRecognitionAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion {
    UIImage *image = [images firstObject];
    NSDictionary *data = @{@"data" : [image base64Encoding]};
    [self.manager POST:[LQIndicoEndpoints facialEmotionRecognitionEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)imageFeaturesAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion{
    UIImage *image = [images firstObject];
    NSDictionary *data = @{@"data" : [image base64Encoding]};
    [self.manager POST:[LQIndicoEndpoints imageFeaturesEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)facialFeatureAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion {
    UIImage *image = [images firstObject];
    NSDictionary *data = @{@"data" : [image base64Encoding]};
    [self.manager POST:[LQIndicoEndpoints facialFeatureEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)facialLocalizationAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion{
    UIImage *image = [images firstObject];
    NSDictionary *data = @{@"data" : [image base64Encoding]};
    [self.manager POST:[LQIndicoEndpoints facialLocalizationEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

- (void)contentFilteringAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion{
    UIImage *image = [images firstObject];
    NSDictionary *data = @{@"data" : [image base64Encoding]};
    [self.manager POST:[LQIndicoEndpoints contentFilteringEndpoint]
            parameters:data
               success:^(NSURLSessionDataTask *task, id responseObject) {
                   if (completion) {
                       completion(responseObject, nil);
                   }
               }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completion) {
                       completion(nil, error);
                   }
               }];
}

@end
