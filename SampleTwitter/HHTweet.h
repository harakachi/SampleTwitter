//
//  HHTweet.h
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HHTweet : NSObject

@property (nonatomic, retain) NSString *user;
@property (nonatomic, retain) NSString *text;

+ (HHTweet *)tweetWithJSON:(id)JSON;

@end
