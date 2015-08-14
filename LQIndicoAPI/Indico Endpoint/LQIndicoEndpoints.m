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

+ (NSString *)sentimentEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoSentiment];
}

+ (NSString *)sentimentHQEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoSentimenHighQuality];
}

+ (NSString *)textTagsEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoTextTags];
}

+ (NSString *)languageEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoLanguage];
}

+ (NSString *)politicalEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoPolitical];
}

+ (NSString *)keywordEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoKeywords];
}

+ (NSString *)namedEntitiesEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoNamedEntities];
}

+ (NSString *)twitterEngagementEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoTwitterEngagement];
}

//---------------------------------------------------------------------------------------------------------------
// Image Analysis
//---------------------------------------------------------------------------------------------------------------

+ (NSString *)facialEmotionRecognitionEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoFacialEmotionRecognition];
}

+ (NSString *)imageFeaturesEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoImageFeatures];
}

+ (NSString *)facialFeatureEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoFacialFeatures];
}

+ (NSString *)facialLocalizationEndpoint {
    return [LQIndicoEndpoints urlStringFor:kIndicoFacialLocalization];
}

+ (NSString *)contentFilteringEndpoint{
    return [LQIndicoEndpoints urlStringFor:kIndicoTwitterEngagement];
}

#pragma mark - Helper Method

+ (NSString *)urlStringFor:(NSString *)api {
    return [NSString stringWithFormat:@"%@key=%@", api, kIndicoEndpointAPIKey];
}

@end
