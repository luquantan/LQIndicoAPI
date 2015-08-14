//
//  LQNetworkManager.h
//  LQIndicoAPI
//
//  Created by LuQuan Intrepid on 6/5/15.
//  Copyright (c) 2015 Lu Quan Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^LQDictionaryCompletionBlock)(NSDictionary *result, NSError *error);

@interface LQNetworkManager : NSObject

+ (instancetype)sharedManager;

/**
 *  NOTE:
 *  These function take an array of items so that I can implement the batch requests later.
 *  However, you should only send one item to the array in each request for now.
 *
 */

//---------------------------------------------------------------------------------------------------------------
// Text Analysis
//---------------------------------------------------------------------------------------------------------------

- (void)sentimentAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)highQualitySentimentAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)textTagsAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)languageAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)politicalAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)keywordsAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)namedEntitiesAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)twitterEnagagementAnalysis:(NSArray *)texts completionHandler:(LQDictionaryCompletionBlock)completion;

//---------------------------------------------------------------------------------------------------------------
// Image Analysis
//---------------------------------------------------------------------------------------------------------------

- (void)facialEmotionRecognitionAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)imageFeaturesAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)facialFeatureAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)facialLocalizationAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)contentFilteringAnalysis:(NSArray *)images completionHandler:(LQDictionaryCompletionBlock)completion;


@end
