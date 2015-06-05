//
//  LQIndicoEndpoints.h
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LQIndicoEndpoints : NSObject

// For more information on these APIs provided by Indico, visit https://docs.indico.io/v2.0/docs


/**
 *  Tag unstructured text with topics from a wide range of topics
 *  For the full list of topics, visit https://docs.indico.io/v2.0/docs/text-tags
 */
+ (NSURL *)textTagsEndpoint;

/**
 *  Determine if the overall sentiment in the text is positive or negative
 *
 */
+ (NSURL *)sentimentEndpoint;

/**
 *  Predict the language of a given piece of text
 *  For the full list of languages, visit https://docs.indico.io/v2.0/docs/language-1
 */
+ (NSURL *)languageEndpoint;

/**
 *  Predict the political alignment of a given piece of text
 *  The political groups included are Conservative, Greem, Liberal and Libertarian
 */
+ (NSURL *)politicalEndpoint;


/**
 *  Extract the emotions from an image of a face
 *  The emotions included are: Angry, Sad, Neutral, Surprise, Fear, Happy
 */
+ (NSURL *)facialEmotionRecognitionEndpoint;

/**
 *  Convert images from pixel arrrays to meaningful feature vectors
 *
 */
+ (NSURL *)imageFeaturesEndpoint;

/**
 *  Convert images of faces from pixel arrays to meaningful feature vectors
 *
 */
+ (NSURL *)facialFeatureEndpoint;


@end
