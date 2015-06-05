//
//  LQIndicoEndpoints.m
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import "AFNetworking/AFNetworking.h"
#import "LQIndicoEndpoints.h"

static NSString * const kIndicoEndpointAPIKey = @"API_KEY_HERE";
static NSString * const kIndicoEndpointBaseURL = @"https://apiv2.indico.io/";

//API's
static NSString * const kIndicoTextTags = @"texttags?";
static NSString * const kIndicoSentiment = @"sentiment?";
static NSString * const kIndicoLanguage = @"language?";
static NSString * const kIndicoPolitical = @"political?";
static NSString * const kIndicoFacialEmotionRecognition = @"fer?";
static NSString * const kIndicoImageFeatures = @"imagefeatures?";
static NSString * const kIndicoFacialFeatures = @"facialfeatures?";

@implementation LQIndicoEndpoints

#pragma mark - Endpoints

+ (NSURL *)textTagsEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoTextTags]];
}

+ (NSURL *)sentimentEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoSentiment]];
}

+ (NSURL *)languageEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoLanguage]];
}

+ (NSURL *)politicalEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoPolitical]];
}

+ (NSURL *)facialEmotionRecognitionEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoFacialEmotionRecognition]];
}

+ (NSURL *)imageFeaturesEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoImageFeatures]];
}

+ (NSURL *)facialFeatureEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoFacialFeatures]];
}

#pragma mark - Helper Method

+ (NSString *)urlStringFor:(NSString *)api {
    return [NSString stringWithFormat:@"%@%@key=%@", kIndicoEndpointBaseURL, api, kIndicoEndpointAPIKey];
}

@end
