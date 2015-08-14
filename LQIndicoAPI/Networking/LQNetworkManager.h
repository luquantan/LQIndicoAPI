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

- (void)textTagsWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion;

- (void)sentimentAnalysisWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)languageAnalysisWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion;
- (void)politicalAnalysisWithText:(NSString *)text completionHandler:(LQDictionaryCompletionBlock)completion;

@end
