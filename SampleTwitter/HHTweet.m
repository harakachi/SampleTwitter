//
//  HHTweet.m
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "HHTweet.h"

@implementation HHTweet

+ (HHTweet*)tweetWithJSON:(id)JSON
{
    HHTweet *tweet = [[HHTweet alloc] init];
    [tweet setUser:[[JSON objectForKey:@"user"] objectForKey:@"screen_name"]];
    [tweet setText:[JSON objectForKey:@"text"]];
    return tweet;
}

@end
