//
//  LQIndicoEndpoints.m
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import "AFNetworking/AFNetworking.h"
#import "LQIndicoEndpoints.h"

@implementation LQIndicoEndpoints

#pragma mark - Endpoints

//---------------------------------------------------------------------------------------------------------------
// Text Analysis
//---------------------------------------------------------------------------------------------------------------

+ (NSURL *)sentimentEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoSentiment]];
}

+ (NSURL *)sentimentHQEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoSentimenHighQuality]];
}

+ (NSURL *)textTagsEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoTextTags]];
}

+ (NSURL *)languageEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoLanguage]];
}

+ (NSURL *)politicalEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoPolitical]];
}

+ (NSURL *)keywordEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoKeywords]];
}

+ (NSURL *)namedEntitiesEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoNamedEntities]];
}

+ (NSURL *)twitterEngagementEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoTwitterEngagement]];
}

//---------------------------------------------------------------------------------------------------------------
// Image Analysis
//---------------------------------------------------------------------------------------------------------------

+ (NSURL *)facialEmotionRecognitionEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoFacialEmotionRecognition]];
}

+ (NSURL *)imageFeaturesEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoImageFeatures]];
}

+ (NSURL *)facialFeatureEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoFacialFeatures]];
}

+ (NSURL *)facialLocalizationEndpoint {
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoFacialLocalization]];
}

+ (NSURL *)contentFilteringEndpoint{
    return [NSURL URLWithString:[LQIndicoEndpoints urlStringFor:kIndicoTwitterEngagement]];
}

#pragma mark - Helper Method

+ (NSString *)urlStringFor:(NSString *)api {
    return [NSString stringWithFormat:@"%@key=%@", api, kIndicoEndpointAPIKey];
}

@end
