//
//  LQIndicoEndpoints.h
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const kIndicoEndpointBaseURL = @"https://apiv2.indico.io/";
static NSString * const kIndicoEndpointAPIKey = @"56a69fcc2d30ad42bffee46159d3951e";
#warning You need to register for a free public API key at https://indico.io/register

//APIs for text analysis
static NSString * const kIndicoSentiment = @"sentiment?";
static NSString * const kIndicoSentimenHighQuality = @"sentimenthq?";
static NSString * const kIndicoTextTags = @"texttags?";
static NSString * const kIndicoLanguage = @"language?";
static NSString * const kIndicoPolitical = @"political?";
static NSString * const kIndicoKeywords = @"keywords?"; //TODO: not implemented yet
static NSString * const kIndicoNamedEntities = @"namedentitites?"; //TODO: not implemented yet
static NSString * const kIndicoTwitterEngagement = @"twitterengagement?"; //TODO: not implemented yet

//APIs for image analysis
static NSString * const kIndicoFacialEmotionRecognition = @"fer?";
static NSString * const kIndicoImageFeatures = @"imagefeatures?";
static NSString * const kIndicoFacialFeatures = @"facialfeatures?";
static NSString * const kIndicoFacialLocalization = @"faciallocalization";
static NSString * const kIndicoContentFiltering = @"contentfiltering";

//TODO: There are batch endpoints that I will not implement yet for now.

@interface LQIndicoEndpoints : NSObject

// For more information on these APIs provided by Indico, visit https://docs.indico.io/v2.0/docs


//---------------------------------------------------------------------------------------------------------------
// Text Analysis
//---------------------------------------------------------------------------------------------------------------

/**
 *  Determine if the overall sentiment in the text is positive or negative
 *
 */
+ (NSString *)sentimentEndpoint;

/**
 *  Determine if the overall sentiment in the text is positive or negative(high quality)
 *
 */
+ (NSString *)sentimentHQEndpoint;

/**
 *  Tag unstructured text with topics from a wide range of topics
 *  For the full list of topics, visit https://docs.indico.io/v2.0/docs/text-tags
 */
+ (NSString *)textTagsEndpoint;

/**
 *  Predict the language of a given piece of text
 *  For the full list of languages, visit https://docs.indico.io/v2.0/docs/language-1
 */
+ (NSString *)languageEndpoint;

/**
 *  Predict the political alignment of a given piece of text
 *  The political groups included are Conservative, Greem, Liberal and Libertarian
 */
+ (NSString *)politicalEndpoint;

/**
 *  Extract important words from the text
 *
 */
+ (NSString *)keywordEndpoint;

/**
 *  Identify the names of people, places, and organizations in a phrase or document
 *
 */
+ (NSString *)namedEntitiesEndpoint;

/**
 *  Predict twitter audience engagement for a given tweet
 *
 */
+ (NSString *)twitterEngagementEndpoint;

//---------------------------------------------------------------------------------------------------------------
// Image Analysis
//---------------------------------------------------------------------------------------------------------------

/**
 *  Extract the emotions from an image of a face
 *  The emotions included are: Angry, Sad, Neutral, Surprise, Fear, Happy
 */
+ (NSString *)facialEmotionRecognitionEndpoint;

/**
 *  Convert images from pixel arrrays to meaningful feature vectors
 *
 */
+ (NSString *)imageFeaturesEndpoint;

/**
 *  Convert images of faces from pixel arrays to meaningful feature vectors
 *
 */
+ (NSString *)facialFeatureEndpoint;

/**
 *  Returns a list of face bounding boxes founds for a given image
 *
 */
+ (NSString *)facialLocalizationEndpoint;

/**
 *  Determines whether or not an image contains mature content
 *
 */
+ (NSString *)contentFilteringEndpoint;

@end
